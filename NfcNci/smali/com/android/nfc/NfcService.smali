.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;
.implements Lcom/android/nfc/DeviceHost$SecureElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$CheckCardEmulationStatus;,
        Lcom/android/nfc/NfcService$CheckTagConnectionThread;,
        Lcom/android/nfc/NfcService$MobilePosService;,
        Lcom/android/nfc/NfcService$NfcControllerService;,
        Lcom/android/nfc/NfcService$HandsetService;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;,
        Lcom/android/nfc/NfcService$ListenModeDeathRecipient;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;,
        Lcom/android/nfc/NfcService$GpacPermissionInfo;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.NFC.OPEN"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_ISIS_TRANSACTION_DETECTED:Ljava/lang/String; = "com.paywithisis.action.TRANSACTION_DETECTED"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_MPOS_ERR_NTF:Ljava/lang/String; = "com.samsung.nfc.mpos.action.MPOS_ERR_NTF"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field public static final BIGDATA_LOGGING_P2P:Ljava/lang/String; = "com.samsung.nfc.p2p.ERROR"

.field private static final BIG_DATA_CE_FWE_CATEGORY_HW:I = 0x2

.field private static final BIG_DATA_CE_FWE_CATEGORY_PROTOCOL:I = 0x3

.field private static final BIG_DATA_CE_FWE_CATEGORY_RF:I = 0x1

.field private static final BIG_DATA_CE_FWE_CATEGORY_UNKNOWN:I = 0x4

.field public static final BIG_DATA_NFC_P2P:Ljava/lang/String; = "P2PF"

.field public static final BIG_DATA_NFC_POS:Ljava/lang/String; = "POSF"

.field public static final BIG_DATA_NFC_SE:Ljava/lang/String; = "SEIO"

.field public static final BIG_DATA_NFC_SHAND:Ljava/lang/String; = "SHOF"

.field public static final BIG_DATA_NFC_TAG:Ljava/lang/String; = "TAGF"

.field public static final CHECK_SEC_NFC_CARDMODE:Ljava/lang/String; = "com.sec.android.app.nfctest.CHECK_SEC_NFC_CARDMODE"

.field public static final CHECK_SEC_NFC_CARDMODE_ACTIVATED:Ljava/lang/String; = "CARDMODE_ACTIVATED"

.field public static final CHECK_SEC_NFC_CARDMODE_RESP:Ljava/lang/String; = "com.sec.android.app.nfctest.CHECK_SEC_NFC_CARDMODE_RESP"

.field public static final CHECK_SEC_NFC_ESE:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_CHECK_ESE"

.field public static final CHECK_SEC_NFC_ESE_RESP:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_CHECK_ESE_RESPONSE"

.field public static final CHECK_SEC_NFC_SIM:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_CHECK_SIM"

.field public static final CHECK_SEC_NFC_SIM_RESP:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_CHECK_SIM_RESPONSE"

.field public static final CHECK_SIM_DATA:Ljava/lang/String; = "SIM_DATA"

.field static final DBG:Z

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field public static final DISABLE_SEC_NFC_DISCOVERY:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final ENABLE_SEC_NFC_DISCOVERY:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_DISCOVERY_ENABLE"

.field public static final END_SEC_NFC_TEST_CMD:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_TEST_END"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.android.nfc_extras.extra.DATA"

.field public static final EXTRA_ISIS_AID:Ljava/lang/String; = "paywithisis.nfc.extra.AID"

.field public static final EXTRA_ISIS_DATA:Ljava/lang/String; = "paywithisis.nfc.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field static final FIRMWARE_DOWNLOAD_STATUS_COMPLETED:I = 0x2

.field static final FIRMWARE_DOWNLOAD_STATUS_ERROR:I = 0x3

.field static final FIRMWARE_DOWNLOAD_STATUS_NONE:I = 0x0

.field static final FIRMWARE_DOWNLOAD_STATUS_START:I = 0x1

.field public static final FIRMWARE_FORCE_DOWNLOAD:Ljava/lang/String; = "com.sec.android.app.nfctest.FIRMWARE_FORCE_DOWNLOAD"

.field public static final FIRMWARE_FORCE_DOWNLOAD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.nfctest.FIRMWARE_FORCE_DOWNLOAD_COMPLETE"

.field private static final GET_FW_VERSION:Ljava/lang/String; = "services.nfc.action.GET_FIRMWARE_VERSION"

.field private static final GET_FW_VERSION_RESPONSE:Ljava/lang/String; = "services.nfc.action.GET_FIRMWARE_VERSION_RESPONSE"

.field private static final GET_NFC_DETAILS:Ljava/lang/String; = "services.nfc.action.GET_NFC_DETAILS"

.field private static final GET_NFC_DETAILS_RSP:Ljava/lang/String; = "services.nfc.action.GET_NFC_DETAILS_RSP"

.field public static final GET_TECH_TYPE:Ljava/lang/String; = "com.sec.android.app.nfctest.GET_TECH_TYPE"

.field public static final GET_TECH_TYPE_RESPONSE:Ljava/lang/String; = "com.sec.android.app.nfctest.GET_TECH_TYPE_RESPONSE"

.field public static final GSIM_ABEAM_STATUS:Ljava/lang/String; = "NF03"

.field public static final GSIM_NFC_OPERATION:Ljava/lang/String; = "NF04"

.field public static final GSIM_NFC_OPERATION_P2P:Ljava/lang/String; = "2"

.field public static final GSIM_NFC_OPERATION_TAG_RW:Ljava/lang/String; = "1"

.field public static final GSIM_NFC_ROUTED_MAX_CNT:I = 0x3

.field public static final GSIM_NFC_ROUTED_SE:Ljava/lang/String; = "NF05"

.field public static final GSIM_NFC_ROUTED_SE_ESE_TYPE:J = 0x1L

.field public static final GSIM_NFC_ROUTED_SE_HCE_TYPE:J = 0x0L

.field public static final GSIM_NFC_ROUTED_SE_UICC_TYPE:J = 0x2L

.field public static final GSIM_NFC_STATUS:Ljava/lang/String; = "NF01"

.field public static final GSIM_NFC_TAG_CONNECTING_STATUS:Ljava/lang/String; = "NF02"

.field public static final GSIM_NFC_TAG_LONG_DETECTION_TIMER:Ljava/lang/String; = "NF06"

.field public static final GSIM_NFC_TAG_RF_OFF:Ljava/lang/String; = "1"

.field public static final GSIM_STATUS_OFF:J = 0x0L

.field public static final GSIM_STATUS_ON:J = 0x3e8L

.field static final GSIM_SURVEY_MODE:Z

.field public static final HANDSET_SERVICE_NAME:Ljava/lang/String; = "handset"

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field private static final INTERVAL_SIM_STATE_CHECK:I = 0xbb8

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field private static IsLedCoverAttached:Z = false

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MAX_COUNT_SIM_STATE_CHECK:I = 0x4

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field public static final MOBILEPOS_SERVICE_NAME:Ljava/lang/String; = "secontroller"

.field public static final MPOS_ACTION_RF_POWER_OFF:Ljava/lang/String; = "com.samsung.nfc.mpos.action.RF_POWER_OFF"

.field public static final MPOS_ACTION_RF_POWER_ON:Ljava/lang/String; = "com.samsung.nfc.mpos.action.RF_POWER_ON"

.field public static final MPOS_ACTION_SELECT_HOST:Ljava/lang/String; = "com.samsung.nfc.mpos.action.SELECT_HOST"

.field public static final MPOS_ACTION_SET_TESTMODE:Ljava/lang/String; = "com.samsung.nfc.mpos.action.SET_TESTMODE"

.field public static final MPOS_ACTION_START_DEDICATE_READERMODE:Ljava/lang/String; = "com.samsung.nfc.mpos.action.START_DEDICATE_READERMODE"

.field public static final MPOS_ACTION_STOP_DEDICATE_READERMODE:Ljava/lang/String; = "com.samsung.nfc.mpos.action.STOP_DEDICATE_READERMODE"

.field public static final MPOS_EXTRA_AID:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.AID"

.field public static final MPOS_EXTRA_HOST:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.HOST"

.field public static final MPOS_EXTRA_MODE:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.MODE"

.field public static final MPOS_EXTRA_PACKAGE:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.PACKAGE"

.field private static final MPOS_PERM:Ljava/lang/String; = "com.samsung.nfc.permission.MPOS"

.field private static final MPOS_PERM_ERROR:Ljava/lang/String; = "mPOS permission required"

.field static final MSG_ACTIVE_NFC_ICON:I = 0x1f5

.field static final MSG_APPLY_TEMP_ROUTING_TABLE:I = 0x190

.field public static final MSG_CARD_EMULATION:I = 0x6d

.field public static final MSG_CARD_EMULATION_AID_SELECTED:I = 0x6b

.field static final MSG_CHN_ENABLE_CANCEL:I = 0xcb

.field static final MSG_CHN_ENABLE_DIRECT:I = 0xca

.field static final MSG_CHN_ENABLE_POPUP:I = 0xc9

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field public static final MSG_CONNECTIVITY_EVENT:I = 0x6c

.field static final MSG_DISABLE:I = 0x13a

.field static final MSG_ENABLE:I = 0x13b

.field static final MSG_GSMA_POPUP:I = 0xd3

.field static final MSG_GSMA_POPUP_CANCEL:I = 0xd5

.field static final MSG_GSMA_POPUP_OK:I = 0xd4

.field static final MSG_INACTIVE_NFC_ICON:I = 0x1f6

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LISTEN_ACTIVATED:I = 0xe

.field static final MSG_LISTEN_DEACTIVATED:I = 0xf

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_MPOS_ERR_NOTIFIED:I = 0xa0

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_P2P_ERROR_EVENT:I = 0x36

.field static final MSG_PPSE_ROUTED:I = 0xc

.field static final MSG_READER_DISABLE:I = 0x138

.field static final MSG_READER_ENABLE:I = 0x139

.field static final MSG_REROUTE_ALL_AID:I = 0xd

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_ROUTE_ENTRY:I = 0x1f7

.field public static final MSG_SE_APDU_RECEIVED:I = 0x66

.field public static final MSG_SE_EMV_CARD_REMOVAL:I = 0x67

.field public static final MSG_SE_FIELD_ACTIVATED:I = 0x64

.field public static final MSG_SE_FIELD_DEACTIVATED:I = 0x65

.field public static final MSG_SE_LISTEN_ACTIVATED:I = 0x69

.field public static final MSG_SE_LISTEN_DEACTIVATED:I = 0x6a

.field public static final MSG_SE_MIFARE_ACCESS:I = 0x68

.field static final MSG_TAG_CONNECTION:I = 0x12c

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UNROUTE_ENTRY:I = 0x1f8

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field public static final NFCCONTROLLER_SERVICE_NAME:Ljava/lang/String; = "nfccontroller"

.field static final NFC_LISTEN_A:I = 0x1

.field static final NFC_LISTEN_ACTIVE_A:I = 0x40

.field static final NFC_LISTEN_ACTIVE_F:I = 0x80

.field static final NFC_LISTEN_B:I = 0x2

.field static final NFC_LISTEN_F:I = 0x4

.field static NFC_ON_DEFAULT:Z = false

.field private static final NFC_ON_READER_DEFAULT:Z = false

.field private static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field static final NFC_POLLING_MODE:I = 0x3

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field private static final NFC_URGENT_FW_UPDATE_CHECK:Ljava/lang/String; = "com.samsung.permission.NFC_URGENT_FW_UPDATE_CHECK"

.field public static final NO_DISCOVERY_SEC_NFC_ON:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_ON_NO_DISCOVERY"

.field public static final P2P_ERROR_BT_OPP_EVT:I = 0x3

.field public static final P2P_ERROR_CONNECT_FAIL_EVT:I = 0x1

.field public static final P2P_ERROR_INVALID_HANDLE_EVT:I = 0x0

.field public static final P2P_ERROR_LINK_LOST_EVT:I = 0x2

.field public static final P2P_TRY:I = 0x4

.field public static final PRBS_TEST_OFF:Ljava/lang/String; = "com.sec.android.app.nfctest.PRBS_TEST_OFF"

.field public static final PRBS_TEST_ON:Ljava/lang/String; = "com.sec.android.app.nfctest.PRBS_TEST_ON"

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field static final PREF_DISABLE_CHN_ENABLE_DIALOG:Ljava/lang/String; = "disable_chn_enable_dialog"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field public static final PREF_FIRST_ENABLE_BY_USER:Ljava/lang/String; = "first_enable_by_user"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_NFC_READER_ON:Ljava/lang/String; = "nfc_reader_on"

.field public static final RESUME_WIRELESS_CHAGE:I = 0x1

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field public static final SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final SET_TECH_TYPE:Ljava/lang/String; = "com.sec.android.app.nfctest.SET_TECH_TYPE"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field public static final START_SEC_NFC_TEST_CMD:Ljava/lang/String; = "com.sec.android.app.nfctest.NFC_TEST_START"

.field public static final STOP_WIRELESS_CHAGE:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field public static final TAG_ERROR_ALREADY_TAG_DEACTIVATED_EVT:I = 0x5

.field public static final TAG_ERROR_CHECK_NDEF_FAIL_EVT:I = 0x1

.field public static final TAG_ERROR_CONNECT_FAIL_EVT:I = 0x0

.field public static final TAG_ERROR_NDEF_DETECT_TIMEOUT_EVT:I = 0x4

.field public static final TAG_ERROR_READ_NDEF_FAIL_EVT:I = 0x2

.field public static final TAG_ERROR_UNKNOWN_PROTOCOL_EVT:I = 0x3

.field public static final TAG_ERROR_WRITE_NDEF_FAIL_INVALID_PARAM_EVT:I = 0x8

.field public static final TAG_ERROR_WRITE_NDEF_FAIL_MSG_TOO_BIG_EVT:I = 0x9

.field public static final TAG_ERROR_WRITE_NDEF_FAIL_NOT_FORMATTED_EVT:I = 0x7

.field public static final TAG_ERROR_WRITE_NDEF_FAIL_READ_ONLY_EVT:I = 0x6

.field static final TASK_BOOT:I = 0x3

.field static final TASK_CHN_ENABLE_CANCEL:I = 0x66

.field static final TASK_CHN_ENABLE_DIRECT:I = 0x65

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field static final TASK_READER_DISABLE:I = 0x6

.field static final TASK_READER_ENABLE:I = 0x5

.field static final TASK_ROUTING_CHANGED:I = 0x64

.field public static final TECH_TYPE:Ljava/lang/String; = "TECH_TYPE"

.field public static final USER_NOT_SET:I = -0x1

.field private static final WIRELESS_CHARGE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_control"

.field private static isAuthTransaction:Z

.field private static isFirmwareDown:Z

.field private static isLedTransaction:Z

.field public static isVzw:Z

.field public static mFirstUserTurnOn:Z

.field public static mIsSecNdefEnabled:Z

.field public static mProductName:Ljava/lang/String;

.field private static mSecureEventType:Ljava/lang/String;

.field private static sService:Lcom/android/nfc/NfcService;

.field private static wirelessCharing:Z

.field private static wirelessStop:Z


# instance fields
.field CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

.field private final UPDATE_RULE_FORCE:I

.field private final UPDATE_RULE_TIME:I

.field checkCardEmulationStatus:Lcom/android/nfc/NfcService$CheckCardEmulationStatus;

.field private fieldOnCount:I

.field private isCheckTagConnetion:Z

.field private isEmergencyMode:Z

.field private isFirstInit:Z

.field private isRoutingTableFull:Z

.field private isSeActivated:I

.field private isTimerStarted:Z

.field private isUrgentFwUpdateChecked:Z

.field private mBrcmFactory:Lcom/android/nfc/broadcom/NfcFactory;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private final mChangedTableDeathRecipient:Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

.field mChnEnablePopupCallingPid:I

.field mChnEnablePopupExist:Z

.field mChnEnablePopupFromAirplaneOn:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mCoverAttached:Z

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field public mDefaultIsoRoute:Ljava/lang/String;

.field private mDevSettingCr:Landroid/database/Cursor;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

.field mEeHandle:I

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mGpacBasedSeEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGpacPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/NfcService$GpacPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mHandsetService:Lcom/android/nfc/NfcService$HandsetService;

.field mHciEventControl:Lcom/android/nfc/HciEventControl;

.field private mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;

.field private mIconType:Ljava/lang/String;

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsDebugBuild:Z

.field private mIsDeferChangeRoutingTable:Z

.field private mIsDeferChangeRoutingToHost:Z

.field mIsHceCapable:Z

.field mIsNdefPushEnabled:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastScreenState:I

.field private mLedCallback:Landroid/nfc/IAppCallback;

.field private final mListenModeDeathRecipient:Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

.field private final mLockUserId:Ljava/lang/Object;

.field private mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

.field private final mMPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobilePosService:Lcom/android/nfc/NfcService$MobilePosService;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field mNfcControllerService:Lcom/android/nfc/NfcService$NfcControllerService;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field private mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

.field private mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private final mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field private mNoDiscoveryNfcOn:Z

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field final mOpenEeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/NfcService$OpenSecureElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private mP2pSent:Z

.field private mP2preceived:Z

.field private mPOSMode:Z

.field mPermitReRouteAllAids:Z

.field mPm:Landroid/os/PersonaManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPowerShutDown:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionCr:Landroid/database/Cursor;

.field private mRoutedSEExtras:[Ljava/lang/String;

.field private mRoutedSEExtrasCount:I

.field private mRoutedSEfeatures:[Ljava/lang/String;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field public final mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSelectedUserId:I

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mTempProto:Ljava/lang/String;

.field private mTempServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTempTech:Ljava/lang/String;

.field private mTestMode:Z

.field private final mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;

.field private mUserId:I

.field private mUserIdForTempTable:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mdelaycheckdone:Z

.field private seActivateCount:I

.field private try_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    .line 233
    sput-boolean v1, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    .line 392
    sput-boolean v1, Lcom/android/nfc/NfcService;->mFirstUserTurnOn:Z

    .line 468
    sput-boolean v2, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    .line 708
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;

    .line 725
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    .line 784
    sput-boolean v1, Lcom/android/nfc/NfcService;->wirelessCharing:Z

    .line 785
    sput-boolean v1, Lcom/android/nfc/NfcService;->wirelessStop:Z

    .line 791
    sput-boolean v1, Lcom/android/nfc/NfcService;->isLedTransaction:Z

    .line 792
    sput-boolean v1, Lcom/android/nfc/NfcService;->isAuthTransaction:Z

    .line 793
    sput-boolean v1, Lcom/android/nfc/NfcService;->isFirmwareDown:Z

    .line 795
    sput-boolean v1, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    .line 821
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/NfcService;->mProductName:Ljava/lang/String;

    .line 822
    sget-object v0, Lcom/android/nfc/NfcService;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "VZW"

    sget-object v3, Lcom/android/nfc/NfcService;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/nfc/NfcService;->isVzw:Z

    return-void

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    :cond_1
    move v2, v1

    .line 822
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 14
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mLedCallback:Landroid/nfc/IAppCallback;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isRoutingTableFull:Z

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mP2pSent:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mP2preceived:Z

    .line 330
    const-string v0, "UICC"

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    .line 475
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 479
    new-instance v0, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ListenModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mListenModeDeathRecipient:Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

    .line 481
    new-instance v0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mChangedTableDeathRecipient:Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mTestMode:Z

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isEmergencyMode:Z

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mdelaycheckdone:Z

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->try_num:I

    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->fieldOnCount:I

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->seActivateCount:I

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isTimerStarted:Z

    .line 593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 599
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->isSeActivated:I

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPermitReRouteAllAids:Z

    .line 673
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingToHost:Z

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isFirstInit:Z

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isUrgentFwUpdateChecked:Z

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mCoverAttached:Z

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcControllerService:Lcom/android/nfc/NfcService$NfcControllerService;

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandsetService:Lcom/android/nfc/NfcService$HandsetService;

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPm:Landroid/os/PersonaManager;

    .line 815
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->UPDATE_RULE_FORCE:I

    .line 816
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/NfcService;->UPDATE_RULE_TIME:I

    .line 818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mMobilePosService:Lcom/android/nfc/NfcService$MobilePosService;

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPOSMode:Z

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mMPosMap:Ljava/util/HashMap;

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    .line 5640
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 5696
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6012
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 6030
    new-instance v0, Lcom/android/nfc/NfcService$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 6044
    new-instance v0, Lcom/android/nfc/NfcService$6;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$6;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mTestReceiver:Landroid/content/BroadcastReceiver;

    .line 6961
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mSelectedUserId:I

    .line 6962
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mLockUserId:Ljava/lang/Object;

    .line 1200
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 1201
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 1202
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 1203
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 1205
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 1207
    const-string v0, "NfcService"

    const-string v1, "Starting NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 1211
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 1212
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1213
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 1220
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    .line 1222
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    .line 1224
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportUce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    const-string v0, "NfcService"

    const-string v1, "FeatureChnage / Uicc CardMode Support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    const-string v1, "UICC"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->makeNewObject(Ljava/lang/String;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportEce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    const-string v0, "NfcService"

    const-string v1, "FeatureChnage / CardMode Support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    const-string v1, "ESE"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->makeNewObject(Ljava/lang/String;)V

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1235
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 1236
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    const-string v1, "DH"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->makeNewObject(Ljava/lang/String;)V

    .line 1238
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 1239
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDynamicServiceManagerInstance()Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    .line 1242
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const-string v1, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    .line 1245
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1246
    const-string v0, "DH"

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    .line 1253
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1261
    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1262
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 1282
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 1297
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1300
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1305
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 1307
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 1308
    const/4 v11, 0x0

    .line 1310
    .local v11, "isNfcProvisioningEnabled":Z
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v11

    .line 1315
    :goto_2
    if-eqz v11, :cond_8

    .line 1316
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 1322
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setEnforceFWDownloadMode(Z)V

    .line 1324
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v4}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 1325
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 1328
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServicePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 1329
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 1331
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 1333
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mState:I

    .line 1334
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1335
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1337
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 1339
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 1341
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1343
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1346
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 1347
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 1349
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->mLastScreenState:I

    .line 1352
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1355
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1358
    new-instance v0, Lcom/android/nfc/broadcom/NfcFactory;

    invoke-direct {v0, p0}, Lcom/android/nfc/broadcom/NfcFactory;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mBrcmFactory:Lcom/android/nfc/broadcom/NfcFactory;

    .line 1359
    const-string v0, "NfcService"

    const-string v1, "register broadcom factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBrcmFactory:Lcom/android/nfc/broadcom/NfcFactory;

    const-string v0, "com.broadcom.nfc.Factory"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mBrcmFactory:Lcom/android/nfc/broadcom/NfcFactory;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1366
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1368
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1369
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1371
    const-string v0, "com.samsung.cover.NFC.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1374
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1380
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1383
    const-string v0, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    const-string v0, "services.nfc.action.GET_NFC_DETAILS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    const-string v0, "com.samsung.nfc.mpos.action.SELECT_HOST"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1394
    const-string v0, "com.samsung.nfc.mpos.action.START_DEDICATE_READERMODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    const-string v0, "com.samsung.nfc.mpos.action.STOP_DEDICATE_READERMODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1396
    const-string v0, "com.samsung.nfc.mpos.action.RF_POWER_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1397
    const-string v0, "com.samsung.nfc.mpos.action.RF_POWER_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1398
    const-string v0, "com.samsung.nfc.mpos.action.SET_TESTMODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    const-string v0, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    const-string v0, "com.samsung.nfc.p2p.ERROR"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 1407
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1410
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1411
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService;->registerForTestMode(Landroid/content/IntentFilter;)V

    .line 1412
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mTestReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mTestMode:Z

    .line 1414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z

    .line 1419
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->getSecureEventType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;

    .line 1421
    new-instance v12, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v12, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1425
    new-instance v12, Landroid/content/IntentFilter;

    .end local v12    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 1426
    .restart local v12    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1427
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1428
    const-string v0, "package"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->initGpacPermissions()V

    .line 1433
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v7, "policyFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1436
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 1439
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 1442
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p0}, Lcom/android/nfc/DeviceHost;->setSeListener(Lcom/android/nfc/DeviceHost$SecureElementListener;)V

    .line 1445
    new-instance v0, Lcom/android/nfc/NfcService$NfcControllerService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcControllerService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcControllerService:Lcom/android/nfc/NfcService$NfcControllerService;

    .line 1447
    :try_start_3
    const-string v0, "nfccontroller"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcControllerService:Lcom/android/nfc/NfcService$NfcControllerService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1453
    :goto_6
    new-instance v0, Lcom/android/nfc/NfcService$MobilePosService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$MobilePosService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mMobilePosService:Lcom/android/nfc/NfcService$MobilePosService;

    .line 1455
    :try_start_4
    const-string v0, "secontroller"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mMobilePosService:Lcom/android/nfc/NfcService$MobilePosService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1462
    :goto_7
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportReaderModeApi()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1463
    new-instance v0, Lcom/android/nfc/NfcService$HandsetService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$HandsetService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandsetService:Lcom/android/nfc/NfcService$HandsetService;

    .line 1465
    :try_start_5
    const-string v0, "handset"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandsetService:Lcom/android/nfc/NfcService$HandsetService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1472
    :cond_5
    :goto_8
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 1475
    new-instance v0, Lcom/android/nfc/HciEventControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/HciEventControl;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    .line 1478
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->getNfcIconType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    .line 1483
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPm:Landroid/os/PersonaManager;

    .line 1490
    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutedSEfeatures:[Ljava/lang/String;

    .line 1491
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    .line 1493
    const-string v0, "/sys/class/power_supply/battery/wc_control"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 1495
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1496
    return-void

    .line 1316
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "policyFilter":Landroid/content/IntentFilter;
    .end local v12    # "ownerFilter":Landroid/content/IntentFilter;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1319
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_4

    .line 1337
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1448
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "policyFilter":Landroid/content/IntentFilter;
    .restart local v12    # "ownerFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v10

    .line 1449
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "NfcService"

    const-string v1, "cannot connect GSMA services"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1456
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 1457
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v0, "NfcService"

    const-string v1, "cannot connect mPOS service"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1466
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 1467
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v0, "NfcService"

    const-string v1, "cannot connect handset services"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1312
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "policyFilter":Landroid/content/IntentFilter;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "ownerFilter":Landroid/content/IntentFilter;
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 1298
    .end local v11    # "isNfcProvisioningEnabled":Z
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 1258
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 1256
    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcService;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mCoverAttached:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mCoverAttached:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isFirstInit:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isFirstInit:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isUrgentFwUpdateChecked:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isUrgentFwUpdateChecked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$OpenSecureElement;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/nfc/NfcService;->isLedTransaction:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/nfc/NfcService;->isLedTransaction:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/nfc/NfcService;Landroid/nfc/IAppCallback;)Landroid/nfc/IAppCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mLedCallback:Landroid/nfc/IAppCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)Landroid/nfc/INfcHciEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/nfc/NfcService;Landroid/nfc/INfcHciEventCallback;)Landroid/nfc/INfcHciEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/nfc/INfcHciEventCallback;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ListenModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mListenModeDeathRecipient:Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mChangedTableDeathRecipient:Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserIdForTempTable:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserIdForTempTable:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTempProto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTempProto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTempTech:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTempTech:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/nfc/NfcService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTempServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/nfc/NfcService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTempServices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    return-object v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/nfc/NfcService;->isFirmwareDown:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/nfc/NfcService;->isAuthTransaction:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/nfc/NfcService;->isAuthTransaction:Z

    return p0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/nfc/NfcService;->wirelessCharing:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 200
    sput-boolean p0, Lcom/android/nfc/NfcService;->wirelessCharing:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z

    return p1
.end method

.method static synthetic access$4400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mTestMode:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mTestMode:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->fieldOnCount:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/nfc/NfcService;->fieldOnCount:I

    return p1
.end method

.method static synthetic access$4608(Lcom/android/nfc/NfcService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->fieldOnCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->fieldOnCount:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isTimerStarted:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isTimerStarted:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->isSeActivated:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/nfc/NfcService;->isSeActivated:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->seActivateCount:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/nfc/NfcService;->seActivateCount:I

    return p1
.end method

.method static synthetic access$5008(Lcom/android/nfc/NfcService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/nfc/NfcService;->seActivateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->seActivateCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getmPOSMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/nfc/NfcService;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/nfc/NfcService;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/nfc/NfcService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->showIcon(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/nfc/NfcService;)Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/nfc/NfcService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/nfc/NfcService;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isEmergencyMode:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isEmergencyMode:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/nfc/NfcService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->makeNfcDetailsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->checkmPOSPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/nfc/NfcService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->setmPOSMode(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isRoutingTableFull:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isRoutingTableFull:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mMPosMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->checkSimStateReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isneededextradelay()Z

    move-result v0

    return v0
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    .line 7012
    const-string v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7013
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7014
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "severity"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7015
    const-string v2, "group"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7016
    const-string v2, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7017
    const-string v2, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7018
    const-string v2, "component"

    const-string v3, "NfcService"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7019
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7020
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 7022
    return-void
.end method

.method private checkMobilePosPermission()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 7383
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 7384
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mMPosMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7385
    .local v2, "reader":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 7386
    const-string v4, "NfcService"

    const-string v5, "select host type first"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7398
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "reader":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 7389
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v4, v2, v1}, Lcom/android/nfc/HciEventControl;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 7398
    const/4 v3, 0x1

    goto :goto_0

    .line 7391
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "reader":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7392
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "NfcService"

    const-string v5, "mHciEventControl is null"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7394
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 7395
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NfcService"

    const-string v5, "Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkSimStateReady(Ljava/lang/String;)Z
    .locals 5
    .param p1, "simState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2340
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_0
    if-nez p1, :cond_2

    .line 2356
    :cond_1
    :goto_0
    return v0

    .line 2343
    :cond_2
    const-string v2, "READY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2344
    goto :goto_0

    .line 2345
    :cond_3
    const-string v2, "ABSENT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 2346
    goto :goto_0

    .line 2347
    :cond_4
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 2348
    goto :goto_0

    .line 2349
    :cond_5
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 2350
    goto :goto_0

    .line 2351
    :cond_6
    const-string v2, "NETWORK_LOCKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 2352
    goto :goto_0

    .line 2353
    :cond_7
    const-string v2, "PERSO_LOCKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2354
    goto :goto_0
.end method

.method private checkmPOSPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7402
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 7403
    :cond_0
    const-string v1, "NfcService"

    const-string v2, "mPOS permission required"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7411
    :goto_0
    return v0

    .line 7406
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.nfc.permission.MPOS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 7408
    const-string v1, "NfcService"

    const-string v2, "mPOS permission required"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7411
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 7
    .param p1, "screenState"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4480
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 4483
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z

    if-eqz v2, :cond_0

    .line 4484
    const-string v2, "NfcService"

    const-string v3, "computeDiscoveryParameters : mNoDiscoveryNfcOn = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    .line 4538
    :goto_0
    return-object v2

    .line 4490
    :cond_0
    const/4 v2, 0x3

    if-lt p1, v2, :cond_a

    .line 4492
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v2, :cond_9

    .line 4493
    const/4 v1, 0x0

    .line 4494
    .local v1, "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 4495
    or-int/lit8 v1, v1, 0x1

    .line 4496
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 4497
    or-int/lit8 v1, v1, 0x2

    .line 4498
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 4499
    or-int/lit8 v1, v1, 0x4

    .line 4500
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 4501
    or-int/lit8 v1, v1, 0x8

    .line 4502
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 4503
    or-int/lit8 v1, v1, 0x20

    .line 4504
    :cond_5
    const-string v2, "KOREA"

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4506
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_6

    .line 4507
    or-int/lit8 v1, v1, 0x40

    .line 4511
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4512
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4533
    .end local v1    # "techMask":I
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v2, v5, :cond_8

    .line 4535
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4538
    :cond_8
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    goto :goto_0

    .line 4514
    :cond_9
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4519
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1

    .line 4521
    :cond_a
    if-ne p1, v5, :cond_b

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_b

    .line 4522
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4524
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1

    .line 4525
    :cond_b
    if-ne p1, v5, :cond_7

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4528
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4529
    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4530
    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1
.end method

.method public static enforceAdminPerm(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 835
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method private getCardEmulationDiscoveredErrorCategory(II)I
    .locals 7
    .param p1, "error_type"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/16 v4, 0xb3

    const/4 v3, 0x2

    const/16 v2, 0xb0

    .line 1024
    const/4 v0, 0x4

    .line 1027
    .local v0, "categoryType":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isNxpChip()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1029
    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 1030
    const/4 v0, 0x1

    .line 1050
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    if-ne p1, v4, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-ne p1, v4, :cond_3

    if-eq p2, v5, :cond_4

    :cond_3
    if-ne p1, v4, :cond_5

    if-ne p2, v3, :cond_5

    .line 1033
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1034
    :cond_5
    if-ne p1, v2, :cond_6

    if-eq p2, v6, :cond_9

    :cond_6
    if-ne p1, v2, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_9

    :cond_7
    if-ne p1, v2, :cond_8

    const/16 v1, 0x9

    if-eq p2, v1, :cond_9

    :cond_8
    const/16 v1, 0xb1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 1038
    :cond_9
    const/4 v0, 0x3

    goto :goto_0

    .line 1040
    :cond_a
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    if-eq p1, v5, :cond_b

    if-ne p1, v3, :cond_c

    .line 1043
    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    .line 1044
    :cond_c
    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 1045
    :cond_d
    const/4 v0, 0x2

    goto :goto_0

    .line 1046
    :cond_e
    if-eq p1, v6, :cond_f

    const/4 v1, 0x6

    if-eq p1, v1, :cond_f

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 1047
    :cond_f
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 839
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getmPOSMode()Z
    .locals 3

    .prologue
    .line 7420
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get mPOS Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mPOSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7421
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mPOSMode:Z

    return v0
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 4336
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 4347
    :cond_1
    return-object v0

    .line 4337
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4338
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 4339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4340
    add-int/lit8 v2, v2, 0x1

    .line 4342
    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 4343
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4344
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 4343
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static final isContainerId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 7005
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTagPresent()Z
    .locals 3

    .prologue
    .line 4542
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4543
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 4544
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    .line 4547
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isneededextradelay()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2363
    const-string v2, "unencrypted"

    const-string v3, "ro.crypto.state"

    const-string v4, "unencrypted"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2364
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "unencrypted "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_0
    :goto_0
    return v0

    .line 2368
    :cond_1
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mdelaycheckdone:Z

    if-eq v2, v1, :cond_0

    .line 2374
    iget v2, p0, Lcom/android/nfc/NfcService;->try_num:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 2376
    iget v0, p0, Lcom/android/nfc/NfcService;->try_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->try_num:I

    move v0, v1

    .line 2377
    goto :goto_0

    .line 2381
    :cond_2
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mdelaycheckdone:Z

    goto :goto_0
.end method

.method private makeNfcDetailsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2391
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "chipMan":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2394
    .local v1, "chipMod":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v2

    .line 2395
    .local v2, "fwVer":I
    const-string v3, "Unknown"

    .line 2397
    .local v3, "fwVersion":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "services.nfc.action.GET_NFC_DETAILS_RSP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2398
    .local v4, "rspIntent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2401
    const-string v6, "N"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2402
    const-string v6, "NFC_ChipMan"

    const-string v7, "NXP"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2403
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v2, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2413
    :cond_0
    :goto_1
    const-string v6, "NFC_CLF_FwV"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2416
    const-string v6, "NFC_ChipMod"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v6, "NFC_HCE_Support"

    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2422
    const-string v7, "NFC_HCE_DefRoute"

    const-string v6, "DH"

    const-string v8, "DH"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "On Host"

    :goto_2
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2424
    return-object v4

    .end local v1    # "chipMod":Ljava/lang/String;
    .end local v2    # "fwVer":I
    .end local v3    # "fwVersion":Ljava/lang/String;
    .end local v4    # "rspIntent":Landroid/content/Intent;
    :cond_1
    move-object v1, v0

    .line 2393
    goto :goto_0

    .line 2405
    .restart local v1    # "chipMod":Ljava/lang/String;
    .restart local v2    # "fwVer":I
    .restart local v3    # "fwVersion":Ljava/lang/String;
    .restart local v4    # "rspIntent":Landroid/content/Intent;
    :cond_2
    const-string v6, "B"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2406
    const-string v6, "NFC_ChipMan"

    const-string v7, "Broadcom"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v2, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2408
    :cond_3
    const-string v6, "S"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2409
    const-string v6, "NFC_ChipMan"

    const-string v7, "S.LSI"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, v2, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 2422
    :cond_4
    const-string v6, "Off Host"

    goto/16 :goto_2
.end method

.method private setmPOSMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 7415
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mPOSMode:Z

    .line 7416
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set mPOS Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mPOSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7417
    :cond_0
    return-void
.end method

.method private showIcon(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6420
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 6422
    .local v0, "sb":Landroid/app/StatusBarManager;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6455
    :cond_0
    :goto_0
    return-void

    .line 6425
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "VZW"

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6426
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6427
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "In VZW, NFC icon should not be displayed on lock screen."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6432
    :cond_2
    if-eqz p1, :cond_4

    .line 6446
    const-string v1, "CITYZI"

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6447
    const-string v1, "nfc_on"

    const v2, 0x7f02000d

    #invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 6449
    :cond_3
    const-string v1, "nfc_on"

    const v2, 0x7f02000b

    #invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 6453
    :cond_4
    const-string v1, "nfc_on"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 6254
    packed-switch p0, :pswitch_data_0

    .line 6266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<error> = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6256
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 6258
    :pswitch_1
    const-string v0, "turning on"

    goto :goto_0

    .line 6260
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 6262
    :pswitch_3
    const-string v0, "turning off"

    goto :goto_0

    .line 6264
    :pswitch_4
    const-string v0, "card on"

    goto :goto_0

    .line 6254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "digest"    # [B

    .prologue
    .line 3580
    const-string v3, "0123456789abcdef"

    .line 3581
    .local v3, "digits":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3582
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 3583
    .local v1, "b":B
    and-int/lit16 v2, v1, 0xff

    .line 3584
    .local v2, "bi":I
    shr-int/lit8 v7, v2, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3585
    and-int/lit8 v7, v2, 0xf

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3582
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3587
    .end local v1    # "b":B
    .end local v2    # "bi":I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public LedCoverRfDetectCallback()V
    .locals 4

    .prologue
    .line 1106
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "RF is detected during LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    const/16 v2, 0xb

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 1109
    .local v0, "data":[B
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost;->TransceiveLedCover([B)[B

    .line 1110
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->StopLedCover()Z

    .line 1111
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mLedCallback:Landroid/nfc/IAppCallback;

    if-nez v2, :cond_1

    .line 1118
    :goto_0
    return-void

    .line 1113
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NfcService"

    const-string v3, "LedCoverNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mLedCallback:Landroid/nfc/IAppCallback;

    invoke-interface {v2}, Landroid/nfc/IAppCallback;->LedCoverNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v1

    .line 1116
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1108
    nop

    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x6t
        0x10t
        0x6t
        0x12t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4254
    monitor-enter p0

    .line 4255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4256
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4260
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_nfcEeClose :: mopenEeMap size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 4263
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcService"

    const-string v1, "applyRouting #9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 4265
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4268
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 4269
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid PID access"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4272
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/NfcService$OpenSecureElement;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 4273
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_nfcEeClose :: mOpenEe = (OpenSecureElement)(mOpenEeMap.get(callingPid)), callingPid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    :cond_5
    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_6

    .line 4277
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4279
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_7

    .line 4280
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4283
    :cond_7
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "NfcService"

    const-string v1, " _nfcEeClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4287
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4289
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4290
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 4291
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 4292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 4294
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4295
    return-void
.end method

.method public adjustDefaultRoutes(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 4722
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setDefaultRouteDestinations(II)V

    .line 4723
    return-void
.end method

.method applyListenModeRouting(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4437
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObjectAll()Ljava/util/ArrayList;

    move-result-object v2

    .line 4440
    .local v2, "nfcEeObjList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/NfcEeObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 4441
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/NfcEeObject;

    .line 4444
    .local v1, "nfcEe":Lcom/android/nfc/cardemulation/NfcEeObject;
    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v3

    if-nez v3, :cond_1

    .line 4440
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4448
    :cond_1
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v1, v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->shouldEnableNfcEe(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4449
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/NfcEeObject;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4450
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 4451
    invoke-virtual {v1, v6}, Lcom/android/nfc/cardemulation/NfcEeObject;->enable(Z)V

    goto :goto_1

    .line 4455
    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/NfcEeObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4456
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 4457
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/cardemulation/NfcEeObject;->enable(Z)V

    goto :goto_1

    .line 4463
    .end local v1    # "nfcEe":Lcom/android/nfc/cardemulation/NfcEeObject;
    :cond_5
    if-eqz p1, :cond_6

    .line 4464
    const-string v3, "NfcService"

    const-string v4, "call the commitRouting - NfcService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4468
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mPermitReRouteAllAids:Z

    .line 4469
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    .line 4476
    :cond_6
    :goto_2
    return-void

    .line 4472
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    goto :goto_2
.end method

.method applyRouting(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4354
    const-string v5, "NfcService"

    const-string v6, "call the applyRouting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    monitor-enter p0

    .line 4356
    :try_start_0
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AdapterState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mScreenState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " applyRouting force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4358
    monitor-exit p0

    .line 4433
    :goto_0
    return-void

    .line 4360
    :cond_1
    sget-boolean v5, Lcom/android/nfc/NfcService;->isLedTransaction:Z

    if-eqz v5, :cond_2

    .line 4361
    const-string v3, "NfcService"

    const-string v4, "isLedTransaction is ture, Skip ApplyRouting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    monitor-exit p0

    goto :goto_0

    .line 4432
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4364
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v5, "applyRouting"

    const/16 v6, 0x2710

    invoke-direct {v2, p0, v5, v6}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 4365
    .local v2, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v5, :cond_3

    .line 4366
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 4368
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v3, :cond_3

    .line 4371
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 4376
    :cond_3
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4377
    const-string v3, "NfcService"

    const-string v4, "Not updating discovery parameters, tag connected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4380
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move v3, v4

    .line 4366
    goto :goto_1

    .line 4384
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 4386
    const-string v3, "NXP_PN547C2"

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "NXP_PN548C2"

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "NXP_PN551"

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4390
    :cond_6
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v4, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 4394
    :cond_7
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v3}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 4395
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 4396
    :cond_8
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4397
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v1

    .line 4398
    .local v1, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v0, v1}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4402
    .end local v1    # "shouldRestart":Z
    :goto_2
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 4404
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4406
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iget v4, p0, Lcom/android/nfc/NfcService;->mLastScreenState:I

    if-eq v3, v4, :cond_a

    .line 4407
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iput v3, p0, Lcom/android/nfc/NfcService;->mLastScreenState:I

    .line 4408
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4409
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "NfcService"

    const-string v4, "defer changing routing table"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    :cond_9
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z

    .line 4420
    :cond_a
    :goto_3
    iget v3, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 4421
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4422
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4423
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    .line 4428
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService;->applyListenModeRouting(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4430
    :try_start_3
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 4432
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 4400
    :cond_c
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 4430
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4413
    .restart local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_d
    :try_start_6
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    goto :goto_3

    .line 4417
    :cond_e
    const-string v3, "NfcService"

    const-string v4, "Discovery configuration equal, not updating."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method

.method checkEnablePopupForChinaNalSecurity()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 2480
    monitor-enter p0

    .line 2481
    const/4 v4, 0x0

    .line 2483
    .local v4, "ret":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->supportChinaNalSecurity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2484
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity enable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const/4 v4, 0x1

    .line 2490
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "disable_chn_enable_dialog"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 2491
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - disable_chn_enable_dialog is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    monitor-exit p0

    .line 2547
    :goto_0
    return v5

    .line 2487
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2496
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    .line 2497
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - Settings.Global.DEVICE_PROVISIONED false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    monitor-exit p0

    goto :goto_0

    .line 2502
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2503
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - FactoryTest.isFactoryMode true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    monitor-exit p0

    goto :goto_0

    .line 2508
    :cond_3
    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mTestMode:Z

    if-ne v6, v9, :cond_4

    .line 2509
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - mTestMode true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    monitor-exit p0

    goto :goto_0

    .line 2513
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getEnforceFWDownloadMode()Z

    move-result v6

    if-ne v6, v9, :cond_5

    .line 2514
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - getEnforceFWDownloadMode true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    monitor-exit p0

    goto :goto_0

    .line 2518
    :cond_5
    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mChnEnablePopupFromAirplaneOn:Z

    if-ne v6, v9, :cond_6

    .line 2519
    const-string v6, "NfcService"

    const-string v7, "ChinaNalSecurity skip - FromAirplaneOn true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mChnEnablePopupFromAirplaneOn:Z

    .line 2521
    monitor-exit p0

    goto :goto_0

    .line 2524
    :cond_6
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2525
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2527
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    sget-boolean v6, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallingPid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/NfcService;->mChnEnablePopupCallingPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2530
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.sec.android.app.secsetupwizard"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.systemui"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.settings"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.nfc"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "system"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.samsung.android.spay"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.sec.android.emergencymode.service"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2537
    :cond_9
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v7, p0, Lcom/android/nfc/NfcService;->mChnEnablePopupCallingPid:I

    if-ne v6, v7, :cond_8

    .line 2538
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChinaNalSecurity skip - intentional by user action and Process is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/NfcService;->mChnEnablePopupCallingPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    monitor-exit p0

    goto/16 :goto_0

    .line 2547
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    goto/16 :goto_0
.end method

.method public clearTable(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 6382
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearTable - type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6383
    :cond_0
    const/16 v0, 0x1f8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 6384
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .prologue
    .line 4696
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4698
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4704
    :goto_0
    return-void

    .line 4702
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4627
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4243
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4245
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4247
    return-void

    .line 4245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .prologue
    .line 4214
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4217
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4220
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 4225
    monitor-enter p0

    .line 4226
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4228
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4230
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 4232
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6298
    :goto_0
    return-void

    .line 6279
    :cond_0
    monitor-enter p0

    .line 6280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wirelessStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/nfc/NfcService;->wirelessStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLedTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/nfc/NfcService;->isLedTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAuthTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/nfc/NfcService;->isAuthTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirmwareDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/nfc/NfcService;->isFirmwareDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLedCoverAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6290
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6291
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6292
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 6293
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6295
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6296
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6297
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;
    .param p3, "isGlobalEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2455
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2456
    .local v3, "um":Landroid/os/UserManager;
    const-string v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2457
    .local v2, "mIpm":Landroid/content/pm/IPackageManager;
    const-string v5, "no_outgoing_beam"

    invoke-virtual {v3, v5, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    move v1, v4

    .line 2460
    .local v1, "isActiveForUser":Z
    :goto_0
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_0

    .line 2461
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enforcing a policy change on user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isActiveForUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v2, v5, v4, v6, v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2476
    :goto_2
    return-void

    .line 2457
    .end local v1    # "isActiveForUser":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2465
    .restart local v1    # "isActiveForUser":Z
    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to change Beam status for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public fileWriteInt(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    const/4 v2, 0x0

    .line 957
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-boolean v6, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileWriteInt to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    if-eq p2, v5, :cond_2

    if-eqz p2, :cond_2

    .line 959
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_1
    :goto_0
    return v4

    .line 964
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 969
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    if-ne p2, v5, :cond_4

    .line 970
    const/4 v6, 0x0

    :try_start_1
    sput-boolean v6, Lcom/android/nfc/NfcService;->wirelessStop:Z

    .line 974
    :cond_3
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 975
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    move v4, v5

    .line 976
    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 977
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 978
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 980
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 981
    :catch_2
    move-exception v1

    .line 982
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_4
    if-nez p2, :cond_3

    .line 972
    const/4 v6, 0x1

    :try_start_4
    sput-boolean v6, Lcom/android/nfc/NfcService;->wirelessStop:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 977
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 4585
    monitor-enter p0

    .line 4586
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4587
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 4588
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    :cond_0
    monitor-exit p0

    return-object v0

    .line 4591
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnforceFWDownloadMode()Z
    .locals 2

    .prologue
    .line 6310
    const-string v0, "nfc.fw.downloadmode_force"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getNfcFwVendor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6200
    const-string v0, "unknown"

    .line 6201
    .local v0, "vendor":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isNxpChip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6202
    const-string v0, "NXP"

    .line 6209
    :cond_0
    :goto_0
    return-object v0

    .line 6203
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6204
    const-string v0, "Broadcom"

    goto :goto_0

    .line 6205
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6206
    const-string v0, "S.LSI"

    goto :goto_0
.end method

.method getNfcFwVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "ver"    # I

    .prologue
    .line 6213
    const-string v0, "unknown"

    .line 6214
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isNxpChip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6224
    :cond_0
    :goto_0
    return-object v0

    .line 6217
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6219
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProfiles(I)Ljava/util/List;
    .locals 9
    .param p1, "ownerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6983
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6984
    .local v5, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPm:Landroid/os/PersonaManager;

    if-nez v6, :cond_1

    .line 6985
    const-string v6, "NfcService"

    const-string v7, "Persona Manager is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7002
    :cond_0
    :goto_0
    return-object v5

    .line 6989
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPm:Landroid/os/PersonaManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 6991
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 6992
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    iget v2, v4, Landroid/content/pm/PersonaInfo;->id:I

    .line 6993
    .local v2, "personaId":I
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v6, v2}, Landroid/os/PersonaManager;->isNFCAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6994
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6999
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "personaId":I
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v0

    .line 7000
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6996
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "personaId":I
    .restart local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NFC not allowed in container  wit id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getSelectedUserId()I
    .locals 2

    .prologue
    .line 6965
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mLockUserId:Ljava/lang/Object;

    monitor-enter v1

    .line 6966
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mSelectedUserId:I

    monitor-exit v1

    return v0

    .line 6967
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    .prologue
    .line 2434
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initGpacPermissions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1523
    sget-object v1, Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;

    const-string v2, "ISIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    new-instance v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$GpacPermissionInfo;-><init>(Lcom/android/nfc/NfcService;)V

    .line 1526
    .local v0, "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    const-string v1, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    iput-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->permName:Ljava/lang/String;

    .line 1529
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    iput-boolean v3, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 1533
    iput v3, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->updateRule:I

    .line 1535
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->permName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    .end local v0    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    :cond_0
    sget-boolean v1, Lcom/android/nfc/NfcService;->isVzw:Z

    if-eqz v1, :cond_1

    .line 1540
    new-instance v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$GpacPermissionInfo;-><init>(Lcom/android/nfc/NfcService;)V

    .line 1541
    .restart local v0    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    const-string v1, "android.permission.NFC"

    iput-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->permName:Ljava/lang/String;

    .line 1543
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.AID_SELECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.AID_SELECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    iget-object v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    const-string v2, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    iput-boolean v3, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 1565
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->updateRule:I

    .line 1567
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->permName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .end local v0    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    :cond_1
    return-void
.end method

.method initSoundPool()V
    .locals 4

    .prologue
    .line 1573
    monitor-enter p0

    .line 1574
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1575
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1576
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 1577
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 1578
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 1580
    :cond_0
    monitor-exit p0

    .line 1581
    return-void

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 7044
    sget-boolean v21, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    if-eqz v21, :cond_3

    .line 7045
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 7047
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v21, "app_id"

    const-string v22, "com.android.nfc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7048
    const-string v21, "feature"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7050
    const-string v21, "TAGF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "POSF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "SEIO"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "P2PF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "SHOF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 7055
    :cond_0
    const/4 v14, 0x0

    .local v14, "lac":I
    const/4 v5, 0x0

    .local v5, "cid":I
    const/4 v10, 0x1

    .line 7057
    .local v10, "i":I
    :try_start_0
    const-string v3, ""

    .local v3, "advancedSetting":Ljava/lang/String;
    const-string v7, ""

    .local v7, "defaultRoute":Ljava/lang/String;
    const-string v8, ""

    .line 7059
    .local v8, "defaultTech":Ljava/lang/String;
    const/4 v13, 0x0

    .line 7061
    .local v13, "json":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    .end local v13    # "json":Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7063
    .restart local v13    # "json":Lorg/json/JSONObject;
    const-string v21, "POSF"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-eqz v21, :cond_2

    .line 7067
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v21, v0

    const-string v22, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual/range {v21 .. v22}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v21, v0

    const-string v22, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual/range {v21 .. v22}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/cardemulation/CardEmulationManager;->supportsAutoRouting()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 7071
    const-string v3, "AUTO"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7081
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "phone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 7083
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_1

    .line 7084
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    .line 7085
    .local v15, "location":Landroid/telephony/CellLocation;
    if-eqz v15, :cond_1

    .line 7086
    instance-of v0, v15, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 7087
    move-object v0, v15

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 7088
    check-cast v15, Landroid/telephony/gsm/GsmCellLocation;

    .end local v15    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v14

    .line 7100
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v16

    .line 7103
    .local v16, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "DE_PRO"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7104
    const-string v21, "DE_TEC"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7105
    const-string v21, "DE_ADV"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7106
    const-string v21, "DE_LAC"

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7107
    const-string v21, "DE_CID"

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7109
    const/4 v10, 0x1

    .line 7110
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_2
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 7111
    .local v17, "ss":Ljava/lang/String;
    const/16 v21, 0x6

    move/from16 v0, v21

    if-le v11, v0, :cond_6

    move v10, v11

    .line 7117
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "ss":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_2
    :goto_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->getNfcFwVendor()Ljava/lang/String;

    move-result-object v19

    .line 7118
    .local v19, "vendor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->getNfcFwVersion(I)Ljava/lang/String;

    move-result-object v20

    .line 7121
    .local v20, "version":Ljava/lang/String;
    const-string v21, "DE_VEN"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7122
    const-string v21, "DE_FWV"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7124
    const-string v21, "extra"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7125
    const-string v21, "NfcService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertLog::json.toString()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 7136
    .end local v3    # "advancedSetting":Ljava/lang/String;
    .end local v5    # "cid":I
    .end local v7    # "defaultRoute":Ljava/lang/String;
    .end local v8    # "defaultTech":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v14    # "lac":I
    .end local v19    # "vendor":Ljava/lang/String;
    .end local v20    # "version":Ljava/lang/String;
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 7137
    .local v4, "broadcastIntent":Landroid/content/Intent;
    const-string v21, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7138
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7139
    const-string v21, "com.samsung.android.providers.context"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7143
    .end local v4    # "broadcastIntent":Landroid/content/Intent;
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 7073
    .restart local v3    # "advancedSetting":Ljava/lang/String;
    .restart local v5    # "cid":I
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "defaultRoute":Ljava/lang/String;
    .restart local v8    # "defaultTech":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v13    # "json":Lorg/json/JSONObject;
    .restart local v14    # "lac":I
    :cond_4
    move-object v3, v7

    goto/16 :goto_0

    .line 7089
    .restart local v15    # "location":Landroid/telephony/CellLocation;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_6
    instance-of v0, v15, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 7090
    move-object v0, v15

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 7091
    check-cast v15, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v15    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {v15}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v14

    goto/16 :goto_1

    .line 7112
    .end local v10    # "i":I
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "ss":Ljava/lang/String;
    :cond_6
    :try_start_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DE_SE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v21

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    :try_start_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v24, 0x28

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    const/16 v21, 0x28

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v11, v10

    .line 7113
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_2

    .line 7112
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v21

    goto :goto_5

    .line 7127
    .end local v3    # "advancedSetting":Ljava/lang/String;
    .end local v7    # "defaultRoute":Ljava/lang/String;
    .end local v8    # "defaultTech":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "ss":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 7128
    .local v9, "e":Lorg/json/JSONException;
    :goto_6
    const-string v21, "NfcService"

    const-string v22, "insertLog::JSONException"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7132
    .end local v5    # "cid":I
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "i":I
    .end local v14    # "lac":I
    :cond_8
    const-string v21, "extra"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 7127
    .restart local v3    # "advancedSetting":Ljava/lang/String;
    .restart local v5    # "cid":I
    .restart local v7    # "defaultRoute":Ljava/lang/String;
    .restart local v8    # "defaultTech":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "json":Lorg/json/JSONObject;
    .restart local v14    # "lac":I
    .restart local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v9

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_6

    .line 7095
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .line 7075
    :catch_3
    move-exception v21

    goto/16 :goto_0

    .end local v10    # "i":I
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_3
.end method

.method insertMultipleStatusLog([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "features"    # [Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 7148
    sget-boolean v3, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    if-eqz v3, :cond_1

    .line 7149
    array-length v3, p1

    new-array v1, v3, [Landroid/content/ContentValues;

    .line 7151
    .local v1, "cvs":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 7152
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v1, v2

    .line 7153
    aget-object v3, v1, v2

    const-string v4, "app_id"

    const-string v5, "com.android.nfc"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7154
    aget-object v3, v1, v2

    const-string v4, "feature"

    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7155
    aget-object v3, v1, v2

    const-string v4, "extra"

    aget-object v5, p2, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7161
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7162
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7163
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7165
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7167
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cvs":[Landroid/content/ContentValues;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method insertStatusLog(Ljava/lang/String;J)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 7027
    sget-boolean v2, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    if-eqz v2, :cond_0

    .line 7028
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7029
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.nfc"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7030
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7031
    const-string v2, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7033
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7034
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7035
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7036
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7038
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7040
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6230
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isFactoryTestApp()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6236
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6237
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 6239
    .local v1, "className":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 6240
    const-string v6, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Top activity class name = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    if-eqz v1, :cond_1

    const-string v3, "com.sec.factory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 6247
    :goto_1
    return v3

    :cond_0
    move-object v3, v1

    .line 6240
    goto :goto_0

    .line 6244
    :catch_0
    move-exception v2

    .line 6245
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v5

    .line 6247
    goto :goto_1
.end method

.method isNFCBringup()Z
    .locals 2

    .prologue
    .line 7364
    const/4 v0, 0x0

    .line 7365
    .local v0, "driverfile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7367
    new-instance v0, Ljava/io/File;

    .end local v0    # "driverfile":Ljava/io/File;
    const-string v1, "/dev/bcm2079x"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7377
    .restart local v0    # "driverfile":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    :goto_1
    return v1

    .line 7368
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isNxpChip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7370
    new-instance v0, Ljava/io/File;

    .end local v0    # "driverfile":Ljava/io/File;
    const-string v1, "/dev/pn547"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "driverfile":Ljava/io/File;
    goto :goto_0

    .line 7371
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7373
    new-instance v0, Ljava/io/File;

    .end local v0    # "driverfile":Ljava/io/File;
    const-string v1, "/dev/sec-nfc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "driverfile":Ljava/io/File;
    goto :goto_0

    .line 7375
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method isNfcEnabled()Z
    .locals 2

    .prologue
    .line 3984
    monitor-enter p0

    .line 3985
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3986
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .prologue
    .line 3976
    monitor-enter p0

    .line 3977
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3980
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isP2pSendCompleted(ZZ)V
    .locals 0
    .param p1, "p2pSent"    # Z
    .param p2, "p2preceived"    # Z

    .prologue
    .line 2429
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mP2pSent:Z

    .line 2430
    iput-boolean p2, p0, Lcom/android/nfc/NfcService;->mP2preceived:Z

    .line 2431
    return-void
.end method

.method public isTrustedPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "SEName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, "bTrusted":Z
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    if-nez v2, :cond_0

    .line 1666
    const/4 v2, 0x0

    .line 1672
    :goto_0
    return v2

    .line 1668
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v2, p1, p2}, Lcom/android/nfc/HciEventControl;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    .line 1672
    goto :goto_0

    .line 1669
    :catch_0
    move-exception v1

    .line 1670
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method makeP2pLog(II)V
    .locals 5
    .param p1, "msg"    # I
    .param p2, "reason"    # I

    .prologue
    .line 7313
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BIGDATA] makeP2pLog : msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7314
    const-string v1, "unknown"

    .line 7316
    .local v1, "p2p_evt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7317
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7319
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    .line 7348
    const-string v1, "unknown"

    .line 7353
    :goto_0
    :try_start_0
    const-string v2, "EV_TYP"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7354
    const/4 v2, 0x3

    if-ge p1, v2, :cond_0

    const-string v2, "ER_RSN"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7359
    :cond_0
    :goto_1
    const-string v2, "P2PF"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7360
    return-void

    .line 7323
    :pswitch_0
    const-string v1, "P2P invalid handle error"

    .line 7325
    goto :goto_0

    .line 7328
    :pswitch_1
    const-string v1, "P2P connect fail error"

    .line 7330
    goto :goto_0

    .line 7333
    :pswitch_2
    const-string v1, "P2P link lost error"

    .line 7335
    goto :goto_0

    .line 7338
    :pswitch_3
    const-string v1, "P2P BT OPP fail"

    .line 7340
    goto :goto_0

    .line 7343
    :pswitch_4
    const-string v1, "P2P TRY"

    .line 7345
    goto :goto_0

    .line 7355
    :catch_0
    move-exception v2

    goto :goto_1

    .line 7319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method makeTagRwLog(Ljava/lang/String;II)V
    .locals 5
    .param p1, "Feature"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "protocol"    # I

    .prologue
    .line 7174
    const-string v2, "unknown"

    .line 7175
    .local v2, "tag_fail_reason":Ljava/lang/String;
    const-string v3, "protocol unknown"

    .line 7176
    .local v3, "tag_protocol":Ljava/lang/String;
    const/4 v1, 0x0

    .line 7178
    .local v1, "tagIsWrite":Z
    const/4 v0, 0x0

    .line 7179
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7181
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    packed-switch p2, :pswitch_data_0

    .line 7239
    const-string v2, "unknown"

    .line 7245
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 7294
    const-string v3, "unknown"

    .line 7300
    :goto_1
    :try_start_0
    const-string v4, "TG_ERR"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7301
    const-string v4, "TG_TYP"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7302
    const-string v4, "TG_ACT"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7307
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7309
    return-void

    .line 7185
    :pswitch_0
    const-string v2, "Tag Connection fail"

    .line 7187
    goto :goto_0

    .line 7190
    :pswitch_1
    const-string v2, "Tag check NDEF fail"

    .line 7192
    goto :goto_0

    .line 7195
    :pswitch_2
    const-string v2, "Tag Read NDEF fail"

    .line 7197
    goto :goto_0

    .line 7200
    :pswitch_3
    const-string v2, "Tag Unknown protocol"

    .line 7202
    goto :goto_0

    .line 7205
    :pswitch_4
    const-string v2, "Tag NDEF Detection Timeout"

    .line 7207
    goto :goto_0

    .line 7210
    :pswitch_5
    const-string v2, "Tag Already Deactivated"

    .line 7212
    goto :goto_0

    .line 7215
    :pswitch_6
    const-string v2, "Tag read-only"

    .line 7216
    const/4 v1, 0x1

    .line 7218
    goto :goto_0

    .line 7221
    :pswitch_7
    const-string v2, "Tag Not formaatted"

    .line 7222
    const/4 v1, 0x1

    .line 7224
    goto :goto_0

    .line 7227
    :pswitch_8
    const-string v2, "Invalid Param"

    .line 7228
    const/4 v1, 0x1

    .line 7230
    goto :goto_0

    .line 7233
    :pswitch_9
    const-string v2, "Message Too Big"

    .line 7234
    const/4 v1, 0x1

    .line 7236
    goto :goto_0

    .line 7249
    :sswitch_0
    const-string v3, "T1T"

    .line 7251
    goto :goto_1

    .line 7254
    :sswitch_1
    const-string v3, "T2T"

    .line 7256
    goto :goto_1

    .line 7259
    :sswitch_2
    const-string v3, "T3T"

    .line 7261
    goto :goto_1

    .line 7264
    :sswitch_3
    const-string v3, "ISO-DEP"

    .line 7266
    goto :goto_1

    .line 7269
    :sswitch_4
    const-string v3, "NFC-DEP"

    .line 7271
    goto :goto_1

    .line 7274
    :sswitch_5
    const-string v3, "B Prime"

    .line 7276
    goto :goto_1

    .line 7279
    :sswitch_6
    const-string v3, "B Prime"

    .line 7281
    goto :goto_1

    .line 7284
    :sswitch_7
    const-string v3, "Kovio"

    .line 7286
    goto :goto_1

    .line 7289
    :sswitch_8
    const-string v3, "CLT"

    .line 7291
    goto :goto_1

    .line 7303
    :catch_0
    move-exception v4

    goto :goto_2

    .line 7181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 7245
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x80 -> :sswitch_5
        0x81 -> :sswitch_6
        0x8a -> :sswitch_7
        0x90 -> :sswitch_8
    .end sparse-switch
.end method

.method maybeDisconnectTarget()V
    .locals 11

    .prologue
    .line 4553
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4582
    :cond_0
    return-void

    .line 4557
    :cond_1
    monitor-enter p0

    .line 4558
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 4561
    .local v5, "objectValues":[Ljava/lang/Object;
    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 4562
    .local v6, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 4563
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4564
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4565
    .local v4, "o":Ljava/lang/Object;
    sget-boolean v8, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :cond_2
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_4

    move-object v7, v4

    .line 4568
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4569
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4564
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4563
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "objectValues":[Ljava/lang/Object;
    .end local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4570
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "objectValues":[Ljava/lang/Object;
    .restart local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_4
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_3

    move-object v1, v4

    .line 4572
    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4573
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_3

    .line 4575
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1
.end method

.method public onAidRoutingTableFull()V
    .locals 2

    .prologue
    .line 878
    const-string v0, "NfcService"

    const-string v1, "AID Routing Table is FULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isRoutingTableFull:Z

    .line 880
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 883
    :cond_0
    return-void
.end method

.method public onCardEmulationAidSelected([B[BI)V
    .locals 5
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 1167
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1168
    .local v0, "dataSrc":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1169
    .local v1, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCardEmulationAidSelected : Source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v2, 0x6d

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1172
    return-void
.end method

.method public onCardEmulationAidSelected4Google([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 1153
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1154
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .prologue
    .line 1148
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public onCardEmulationDiscoveredError(II)V
    .locals 7
    .param p1, "error_type"    # I
    .param p2, "status"    # I

    .prologue
    .line 1055
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCardEmulationDiscoveredError : error_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v1, 0x4

    .line 1058
    .local v1, "categoryType":I
    const-string v0, ""

    .line 1059
    .local v0, "bigData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1060
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1062
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->getCardEmulationDiscoveredErrorCategory(II)I

    move-result v1

    .line 1065
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1068
    :cond_0
    const-string v3, "%02x%02x%02x"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1071
    :try_start_0
    const-string v3, "CE_FWE"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_1
    const-string v3, "POSF"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onCardEmulationNfceeActionNtf(I[BIII)V
    .locals 3
    .param p1, "len_aid"    # I
    .param p2, "data"    # [B
    .param p3, "aid_rt_loc"    # I
    .param p4, "trigger"    # I
    .param p5, "status"    # I

    .prologue
    .line 1083
    const-string v0, "NfcService"

    const-string v1, "onCardEmulationNfceeActionNtf :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len_aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/nfc/NfcService;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aid_rt_loc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method public onCardEmulationSeRouted(I)V
    .locals 10
    .param p1, "SeType"    # I

    .prologue
    const-wide/16 v8, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    .line 994
    int-to-long v2, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    int-to-long v2, p1

    cmp-long v1, v8, v2

    if-gez v1, :cond_2

    .line 996
    :cond_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCardEmulationSeRouted : invalid SE ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1
    :goto_0
    return-void

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEfeatures:[Ljava/lang/String;

    iget v2, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    const-string v3, "NF05"

    aput-object v3, v1, v2

    .line 1002
    int-to-long v2, p1

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 1003
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    iget v2, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    const-string v3, "HCE"

    aput-object v3, v1, v2

    .line 1009
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    .line 1011
    iget v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    if-ne v1, v6, :cond_1

    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v6, :cond_6

    .line 1014
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCardEmulationSeRouted : routedSeCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mRoutedSEfeatures:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SE Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1004
    .end local v0    # "i":I
    :cond_4
    int-to-long v2, p1

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1005
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    iget v2, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    const-string v3, "eSE"

    aput-object v3, v1, v2

    goto :goto_1

    .line 1006
    :cond_5
    int-to-long v2, p1

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    .line 1007
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    iget v2, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    const-string v3, "UICC"

    aput-object v3, v1, v2

    goto :goto_1

    .line 1016
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEfeatures:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtras:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/NfcService;->insertMultipleStatusLog([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1017
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/NfcService;->mRoutedSEExtrasCount:I

    goto :goto_0
.end method

.method public onConnectivityEvent(I)V
    .locals 2
    .param p1, "evtSrc"    # I

    .prologue
    .line 1176
    const/16 v0, 0x6c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1177
    return-void
.end method

.method public onFirmwareDownloadStatusNotify(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1089
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFirmwareDownloadStatusNotify : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1092
    sput-boolean v5, Lcom/android/nfc/NfcService;->isFirmwareDown:Z

    .line 1093
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getEnforceFWDownloadMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1094
    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService;->setEnforceFWDownloadMode(Z)V

    .line 1095
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "enforceFWDownloadMode finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.FIRMWARE_FORCE_DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1103
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1100
    :cond_2
    if-eq p1, v4, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1101
    :cond_3
    sput-boolean v4, Lcom/android/nfc/NfcService;->isFirmwareDown:Z

    goto :goto_0
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 864
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData([B)V

    .line 890
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "deactType"    # I

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 897
    :cond_0
    return-void
.end method

.method public onListenActivated()V
    .locals 2

    .prologue
    .line 868
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 869
    return-void
.end method

.method public onListenDeactivated()V
    .locals 2

    .prologue
    .line 873
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 874
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 920
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 921
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 904
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 905
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 912
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 913
    return-void
.end method

.method public onMPOSListenErrNotified()V
    .locals 3

    .prologue
    .line 1183
    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;->onErrorNotified(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "exception occured"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onP2pDiscoveredError(II)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "reason"    # I

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mP2pSent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mP2preceived:Z

    if-nez v0, :cond_0

    .line 927
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Big Data] Peer-to-Peer ERROR= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",REASON= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->makeP2pLog(II)V

    .line 930
    :cond_0
    return-void
.end method

.method public onPpseRouted(I)Z
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 4713
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4714
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4715
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4716
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4717
    const/4 v1, 0x1

    return v1
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 845
    return-void
.end method

.method public onRemoteEndpointDiscoveredError(II)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "protocol"    # I

    .prologue
    .line 850
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAG ERROR= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PROTOCOL= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v0, "TAGF"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/nfc/NfcService;->makeTagRwLog(Ljava/lang/String;II)V

    .line 853
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .prologue
    .line 934
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 935
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .prologue
    .line 938
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 939
    return-void
.end method

.method public onSeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 1133
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1134
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .locals 2

    .prologue
    .line 1138
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .prologue
    .line 1124
    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1125
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .prologue
    .line 1128
    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1129
    return-void
.end method

.method public onSeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 1143
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1144
    return-void
.end method

.method public onSoftRecovery()V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "sound"    # I

    .prologue
    .line 2319
    monitor-enter p0

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 2321
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    monitor-exit p0

    .line 2336
    :goto_0
    return-void

    .line 2324
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2335
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2326
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 2329
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 2332
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reRouteAid(Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "isStopDiscovery"    # Z
    .param p4, "isStartDiscovery"    # Z

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->reRouteAid([BIZZ)Z

    .line 4709
    return-void
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1593
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 1600
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 1603
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_0

    .line 1604
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1606
    :cond_0
    return-void

    .line 1598
    :cond_1
    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 1600
    :cond_2
    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1
.end method

.method registerForTestMode(Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1610
    const-string v0, "com.sec.android.app.nfctest.NFC_TEST_START"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    const-string v0, "com.sec.android.app.nfctest.NFC_TEST_END"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    const-string v0, "com.sec.android.app.nfctest.NFC_DISCOVERY_ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1613
    const-string v0, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1614
    const-string v0, "com.sec.android.app.nfctest.NFC_ON_NO_DISCOVERY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1615
    const-string v0, "com.sec.android.app.nfctest.NFC_CHECK_SIM"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1616
    const-string v0, "com.sec.android.app.nfctest.NFC_CHECK_ESE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1617
    const-string v0, "com.sec.android.app.nfctest.PRBS_TEST_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1618
    const-string v0, "com.sec.android.app.nfctest.PRBS_TEST_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1619
    const-string v0, "services.nfc.action.GET_FIRMWARE_VERSION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    const-string v0, "com.sec.android.app.nfctest.GET_TECH_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    const-string v0, "com.sec.android.app.nfctest.SET_TECH_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1623
    const-string v0, "com.sec.android.app.nfctest.CHECK_SEC_NFC_CARDMODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1626
    const-string v0, "com.sec.android.app.nfctest.FIRMWARE_FORCE_DOWNLOAD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 4595
    monitor-enter p0

    .line 4596
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4597
    monitor-exit p0

    .line 4598
    return-void

    .line 4597
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .prologue
    .line 1584
    monitor-enter p0

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1589
    :cond_0
    monitor-exit p0

    .line 1590
    return-void

    .line 1589
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeHceOffHostAidRoute([B)V
    .locals 10
    .param p1, "aid"    # [B

    .prologue
    const/4 v9, 0x0

    .line 6353
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 6354
    .local v4, "output":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 6355
    .local v1, "element":B
    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6356
    .local v5, "temp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6358
    .end local v1    # "element":B
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost;->removeHceOffHostAidRoute([B)V

    .line 6359
    return-void
.end method

.method public resetSelectedUserId()V
    .locals 2

    .prologue
    .line 6977
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mLockUserId:Ljava/lang/Object;

    monitor-enter v1

    .line 6978
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/nfc/NfcService;->mSelectedUserId:I

    .line 6979
    monitor-exit v1

    .line 6980
    return-void

    .line 6979
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;II)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "power"    # I

    .prologue
    .line 4666
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4667
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4668
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4669
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4670
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4679
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4680
    return-void
.end method

.method public routeProtocol(III)V
    .locals 5
    .param p1, "protocol"    # I
    .param p2, "route"    # I
    .param p3, "power"    # I

    .prologue
    .line 6387
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    .line 6388
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "routeProtocol [protocol - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " route - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6392
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 6393
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1f7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 6394
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 6395
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 6396
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6397
    .local v1, "routeInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6398
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6399
    return-void
.end method

.method public routeTechnology(III)V
    .locals 5
    .param p1, "technology"    # I
    .param p2, "route"    # I
    .param p3, "power"    # I

    .prologue
    .line 6402
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    .line 6403
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "routeTechnology [technology - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " route - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 6409
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x1f7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 6410
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 6411
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 6412
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6413
    .local v1, "routeInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6414
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6415
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2303
    monitor-enter p0

    .line 2304
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2305
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2306
    monitor-exit p0

    .line 2307
    return-void

    .line 2306
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method saveNfcReaderOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2311
    monitor-enter p0

    .line 2312
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_reader_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2313
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2314
    monitor-exit p0

    .line 2315
    return-void

    .line 2314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendChnEnableCancel()V
    .locals 2

    .prologue
    .line 4644
    const/16 v0, 0xcb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4645
    return-void
.end method

.method public sendChnEnableDirect()V
    .locals 2

    .prologue
    .line 4640
    const/16 v0, 0xca

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4641
    return-void
.end method

.method public sendChnEnablePopup()V
    .locals 2

    .prologue
    .line 4636
    const/16 v0, 0xc9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4637
    return-void
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method public sendGsmaPopup(I)V
    .locals 2
    .param p1, "select"    # I

    .prologue
    const/4 v1, 0x0

    .line 4650
    packed-switch p1, :pswitch_data_0

    .line 4662
    :goto_0
    return-void

    .line 4652
    :pswitch_0
    const/16 v0, 0xd3

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4655
    :pswitch_1
    const/16 v0, 0xd4

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4658
    :pswitch_2
    const/16 v0, 0xd5

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4730
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4731
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4732
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4733
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4734
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 4631
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4632
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 2438
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2442
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 2443
    .local v1, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2444
    .local v2, "uh":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v2, p1}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    goto :goto_0

    .line 2447
    .end local v2    # "uh":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2448
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    .line 2451
    :cond_1
    return-void
.end method

.method public setDefaultRouteDestinations(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 6316
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->adjustDefaultRoutes(II)V

    .line 6318
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 6319
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 6321
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    .line 6322
    return-void
.end method

.method public setEnforceFWDownloadMode(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 6301
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnforceFWDownloadMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nfc.fw.downloadmode_force"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6303
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6304
    const-string v0, "nfc.fw.downloadmode_force"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6307
    :goto_0
    return-void

    .line 6306
    :cond_1
    const-string v0, "nfc.fw.downloadmode_force"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHceOffHostAidRoute([BZZZIZZZ)V
    .locals 15
    .param p1, "aid"    # [B
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 6342
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 6343
    .local v13, "output":Ljava/lang/String;
    move-object/from16 v9, p1

    .local v9, "arr$":[B
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-byte v10, v9, v11

    .line 6344
    .local v10, "element":B
    const-string v0, "%02X:"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 6345
    .local v14, "temp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 6343
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 6347
    .end local v10    # "element":B
    .end local v14    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/nfc/DeviceHost;->setHceOffHostAidRoute([BZZZIZZZ)V

    .line 6348
    return-void
.end method

.method public setSelectedUserId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 6971
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mLockUserId:Ljava/lang/Object;

    monitor-enter v1

    .line 6972
    :try_start_0
    iput p1, p0, Lcom/android/nfc/NfcService;->mSelectedUserId:I

    .line 6973
    monitor-exit v1

    .line 6974
    return-void

    .line 6973
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStaticRouteByProto(IZZZIZZZ)V
    .locals 9
    .param p1, "protocol"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 6335
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/nfc/DeviceHost;->setStaticRouteByProto(IZZZIZZZ)V

    .line 6336
    return-void
.end method

.method public setStaticRouteByTech(IZZZIZZZ)V
    .locals 9
    .param p1, "technology"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 6328
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/nfc/DeviceHost;->setStaticRouteByTech(IZZZIZZZ)V

    .line 6329
    return-void
.end method

.method public simCardRestartNfc()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6363
    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6366
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->setColdBootFlag(Z)V

    .line 6367
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z

    .line 6368
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6377
    :cond_0
    :goto_0
    return-void

    .line 6370
    :catch_0
    move-exception v0

    .line 6371
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "got remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6374
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v1, v3, :cond_0

    .line 6375
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost;->setColdBootFlag(Z)V

    goto :goto_0
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 4601
    monitor-enter p0

    .line 4602
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4603
    monitor-exit p0

    .line 4604
    return-void

    .line 4603
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 4691
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4692
    return-void
.end method

.method public updateNfcLedCoverAttachState(ZLcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4
    .param p1, "isAttached"    # Z
    .param p2, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 942
    monitor-enter p0

    .line 943
    if-nez p2, :cond_0

    .line 944
    :try_start_0
    monitor-exit p0

    .line 953
    :goto_0
    return-void

    .line 946
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 947
    .local v0, "isLed":Z
    :goto_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNfcLedCoverAttachState isAttached :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CoverType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isLed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsLedCoverAttached : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    if-eq v1, v0, :cond_2

    .line 949
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEDCover status change. update :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sput-boolean v0, Lcom/android/nfc/NfcService;->IsLedCoverAttached:Z

    .line 952
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "isLed":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 946
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updatePackageCache()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 1631
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1632
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v10, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v6

    .line 1633
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 1634
    :try_start_0
    iput-object v6, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 1638
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1639
    .local v0, "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1640
    .local v7, "permission":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;

    .line 1642
    .local v1, "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update package Cache - Permissions : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_1
    iget-object v9, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->packageList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1645
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 1646
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->allowedResult:[Z

    .line 1648
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1649
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1650
    .local v5, "packageName":Ljava/lang/String;
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 1652
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update package Cache - pakcagename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_3
    iget-object v9, v1, Lcom/android/nfc/NfcService$GpacPermissionInfo;->packageList:Ljava/util/LinkedList;

    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    .end local v0    # "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    .end local v1    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "permission":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1659
    return-void
.end method
