.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$13;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$KnoxCustomBroadcastReceiver;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_KNOX_CUSTOM_OPERATOR_NAME:Ljava/lang/String; = "com.sec.action.knoxcustom.OPERATOR_NAME"

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DTM_SUPPORT_NETWORK:I = 0x64

.field private static final EMERGENCY_MAX_TIMEOUT:I = 0x927c0

.field private static final EMERGENCY_TERMINATE_TIMEOUT:I = 0xea60

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field protected static final EVENT_NETWORK_STATE_CHANGED_BY_RESCAN:I = 0xfa0

.field private static final EVENT_TMO_WFC_REGISTRATION_STATUS:I = 0x1

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final LTE_DATA_OFF:I = 0x0

.field private static final LTE_DATA_ON:I = 0x1

.field private static final MAX_NITZ_YEAR:I = 0x7f5

.field private static NITZCount:I = 0x0

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field public static final ROAMING_MODE_ALL_NETWORKS:I = 0x2

.field public static final ROAMING_MODE_DISABLE:I = 0x0

.field public static final ROAMING_MODE_NATIONAL_ROMING_ONLY:I = 0x1

.field static final RTS_CS:I = 0x2

.field static final RTS_IDLE:I = 0x1

.field static final RTS_PS:I = 0x3

.field static final RTS_STATUS:I = 0x0

.field static final RTS_TOKEN:Ljava/lang/String; = ";"

.field static final RTS_TOKEN_CS:Ljava/lang/String; = "CS"

.field static final RTS_TOKEN_IDLE:Ljava/lang/String; = "Idle"

.field static final RTS_TOKEN_PS:Ljava/lang/String; = "PS"

.field static final RTS_TOKEN_STATUS:Ljava/lang/String; = "Status"

.field static final RTS_VALUES_COUNT:I = 0x4

.field static final RTS_VALUE_LOC:I = 0x1

.field static final SHIP_BUILD:Z

.field private static final SLOT1_RADIO_OFF:I = 0x2

.field private static final SLOT1_RADIO_ON:I = 0x3

.field public static final TMO_WFC_REGISTRATION_STATE:Ljava/lang/String; = "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field static final VDBG:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static final WFC_CS_PREF:I = 0x2

.field static final WFC_STATUS_OFF:I = 0x2

.field static final WFC_STATUS_ON:I = 0x1

.field static final WFC_WIFI_ONLY:I = 0x3

.field static final WFC_WIFI_PREF:I = 0x1

.field private static emergencyDataOpened:Z

.field protected static isWFCReigstered:Z

.field private static isWfcWifiOnlyMode:Z

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static mDataSuspended:Z

.field static mDsCallCnt:I

.field private static mDsdsTwochipRadioCtrl:Z

.field private static mHasDisconnectedLte:Z

.field private static mHasIncomingCall:I

.field private static mHasRinging:I

.field private static mPrevDataPreferId:I

.field private static mRadioOffForRse:Z

.field private static mScreenState:Z

.field private static mSlot1OldCallState:I

.field static mSlot1Type:I

.field private static mSlot2OldCallState:I

.field static mSlot2Type:I

.field private static mTetherState:Z

.field static oldDsCallStatus:I

.field private static setAutoModeForSlot1:Z

.field private static setGsmOnlyModeFlag:Z


# instance fields
.field protected IsFlightMode:Z

.field protected IsSIMLoadDone:Z

.field protected IsShow:Z

.field protected NetworkStateChangedByRescanDialog:Z

.field private RuimLoadedEvent:Z

.field after2min:Z

.field protected bIsSimAbsent:Z

.field protected bshowDataGuard:Z

.field protected bshowSmsGuard:Z

.field private currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected deniedDialog:Landroid/app/AlertDialog;

.field private getRejectCauseDisplay:Z

.field protected isBootCompleted:Z

.field protected isFirstRescanDialogCheckAfterBoot:Z

.field private isForceUpdate:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mBigDataFeature:I

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field protected mCr:Landroid/content/ContentResolver;

.field private mCurrentOtaspMode:I

.field private mDataNationalRoamingObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field protected mDtmSupport:I

.field private mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field protected mEmergencyOnly:Z

.field protected mGotCountryCode:Z

.field private mGsmRoaming:Z

.field protected mHandset_Auth:Ljava/lang/String;

.field protected mHandset_Reg:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNitzReceived:Z

.field private final mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field mLuRejCause:I

.field protected mMaxDataCalls:I

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field protected mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field mNewLuRejCause:I

.field protected mNewMaxDataCalls:I

.field protected mNewReasonDataDenied:I

.field mNewRilRegState:I

.field protected mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field protected mOldIsDomesticLteRoaming:Z

.field protected mOldIsInternationalLteRoaming:Z

.field private mPendingRadioPowerOffAfterHangup:I

.field protected mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPhoneOnMode:Z

.field mPreferredNetworkType:I

.field private mPrevMcc:Ljava/lang/String;

.field private mPreviousAirplanemode:Z

.field protected mReasonDataDenied:I

.field private mReceivedHomeNetowkNoti:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRegistrationState:I

.field protected mReportedGprsNoReg:Z

.field protected mRescanDialog:Landroid/app/AlertDialog;

.field private mRetrySyncPrefMode:Z

.field mRilRegState:I

.field private mRoamingMode:I

.field private mSlot1CallState:I

.field private mSlot2CallState:I

.field protected mStartedGprsRegCheck:Z

.field private mTmoWfcHandler:Landroid/os/Handler;

.field private mTmoWfcObserver:Landroid/database/ContentObserver;

.field protected mTmoWfcRegistered:Z

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWfcPrefMode:B

.field protected mWfcStatus:B

.field protected mWipiNetValInit:Ljava/lang/String;

.field protected mZoneDst:Z

.field protected mZoneOffset:I

.field protected mZoneTime:J

.field protected m_bActionLocaleChanged:Z

.field protected oldRac:I

.field onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected rac:I

.field private sBigData_Info:Ljava/lang/String;

.field simSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 187
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    .line 215
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    .line 216
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z

    .line 303
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    .line 304
    sput-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    .line 305
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    .line 309
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z

    .line 321
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    .line 381
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldDsCallStatus:I

    .line 382
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsCallCnt:I

    .line 383
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1Type:I

    .line 384
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2Type:I

    .line 389
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWfcWifiOnlyMode:Z

    .line 390
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    .line 421
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I

    .line 422
    sput v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I

    .line 423
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I

    .line 425
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I

    .line 431
    sput v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I

    .line 432
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasDisconnectedLte:Z

    .line 433
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    .line 434
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z

    .line 447
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mConfigNetworkTypeCapability:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 13
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 971
    iget-object v9, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v10, Landroid/telephony/CellInfoGsm;

    invoke-direct {v10}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 196
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 197
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 198
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 199
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 202
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegistrationState:I

    .line 203
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 204
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 205
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsDomesticLteRoaming:Z

    .line 206
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsInternationalLteRoaming:Z

    .line 209
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    .line 214
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 219
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    .line 225
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 231
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 236
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 243
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 247
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 251
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 263
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 266
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 275
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 278
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    .line 299
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 310
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 316
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRetrySyncPrefMode:Z

    .line 317
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    .line 325
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 331
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 332
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    .line 335
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;

    invoke-direct {v9, p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$KnoxCustomBroadcastReceiver;

    invoke-direct {v9, p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$KnoxCustomBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 345
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    .line 346
    const-string v9, "ro.multisim.simslotcount"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    .line 350
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 354
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 355
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 356
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 357
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isBootCompleted:Z

    .line 358
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 359
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    .line 361
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 364
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 365
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bIsSimAbsent:Z

    .line 391
    iput-byte v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    .line 392
    iput-byte v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcPrefMode:B

    .line 401
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    .line 405
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    .line 406
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRac:I

    .line 413
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    .line 419
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I

    .line 420
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I

    .line 437
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z

    .line 439
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;

    .line 440
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I

    .line 442
    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 450
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 854
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcObserver:Landroid/database/ContentObserver;

    .line 898
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcHandler:Landroid/os/Handler;

    .line 912
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 921
    const-string v9, "0"

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 922
    const-string v9, "0"

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 923
    const-string v9, "-1"

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWipiNetValInit:Ljava/lang/String;

    .line 945
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 957
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 959
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    .line 5479
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5521
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 973
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 975
    .local v6, "salesCode":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 976
    new-instance v9, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v9}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 977
    new-instance v9, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v9}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 979
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 981
    .local v5, "powerManager":Landroid/os/PowerManager;
    const-string v9, "ServiceStateTracker"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 983
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xd

    invoke-interface {v9, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, p0, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    invoke-interface {v9, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x78

    invoke-interface {v9, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xb

    invoke-interface {v9, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x17

    invoke-interface {v9, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 994
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 997
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_0

    move v7, v8

    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 999
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 1000
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "auto_time"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1003
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "auto_time_zone"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1007
    const-string v7, "2GNRP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1008
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v9, "data_national_roaming_mode"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1020
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1023
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1026
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 1031
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRuimLoadedEvent()V

    .line 1035
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1036
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1039
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1040
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1041
    .local v1, "context":Landroid/content/Context;
    const-string v7, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    const-string v7, "QCOM"

    const-string v8, "QCOM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1045
    :cond_4
    const-string v7, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1048
    :cond_5
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 1056
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1058
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1064
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1068
    :cond_7
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1069
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1071
    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    :cond_8
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportCallOnAirplaneMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportEpdgOnAirplaneMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1081
    :cond_9
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "action_wfc_switch_profile_broadcast"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1082
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1086
    const-string v7, "com.movial.IMS_REGISTRATION"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    :cond_b
    const-string v7, "CHN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "CHC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "CHU"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "CHM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "CTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1092
    :cond_c
    const-string v7, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    const-string v7, "CTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1096
    :cond_d
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    :cond_e
    const-string v7, "ACTION_REQUEST_FORCE_SPN_UPDATE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v7, "CTC"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isTwochipDsdsOnRoamingModel()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1105
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v7, "android.intent.action.POLL_CALL_DONE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    const-string v7, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    :cond_10
    const-string v7, "CTC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1113
    const-string v7, "com.samsung.intent.action.slot2LPM"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    :cond_11
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ENABLE_SURVEY_MODE:Z

    if-eqz v7, :cond_12

    .line 1119
    const-string v7, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1126
    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.sec.action.knoxcustom.OPERATOR_NAME"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v4, "knoxCustomIntentFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1130
    return-void

    .line 1074
    .end local v4    # "knoxCustomIntentFilter":Landroid/content/IntentFilter;
    :cond_13
    const-string v7, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v7, "com.nttdocomo.android.felicaremotelock.ACTION_STATUS_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private SyncPreferredNetworkType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 5076
    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5077
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType set default PREFERRED_NETWORK_MODE "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5078
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    if-ne p1, v1, :cond_0

    .line 5079
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5102
    :goto_0
    return-void

    .line 5081
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 5084
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 5085
    .local v0, "isLteOn":Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE_ROAMING : GetPreferredNetworkMode type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lte_mode_on is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v1, " enabled "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5086
    if-eqz v0, :cond_5

    .line 5087
    if-ne p1, v5, :cond_4

    .line 5088
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType LTE : nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5084
    .end local v0    # "isLteOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5085
    .restart local v0    # "isLteOn":Z
    :cond_3
    const-string v1, " disabled "

    goto :goto_2

    .line 5090
    :cond_4
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType LTE : set to G/W/L"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5091
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 5094
    :cond_5
    if-eq p1, v4, :cond_6

    if-nez p1, :cond_7

    .line 5095
    :cond_6
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType 3G : nothing"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5097
    :cond_7
    const-string v1, "LTE_ROAMING : SyncPreferredNetworkType 3G: set to G/W"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5098
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isTwochipDsdsOnRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I

    return p1
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I

    return p0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasDisconnectedLte:Z

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I

    return p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I

    return p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->radioOffForTwoChipDsds()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z

    return p1
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z

    return p0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ENABLE_SURVEY_MODE:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRegistrationStatus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNationalRoamingMode()V

    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->switchNetworkTo(I)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 184
    sput p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    return p0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWfcWifiOnlyMode:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private checkIgnoreNITZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "plmnValue"    # Ljava/lang/String;
    .param p2, "numericValue"    # Ljava/lang/String;

    .prologue
    .line 5849
    move-object v0, p1

    .line 5852
    .local v0, "mPlmn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v2

    .line 5854
    .local v2, "ntwType":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_1

    .line 5855
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 5856
    .local v1, "ntClass":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkIgnoreNITZ] ntClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5858
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 5859
    const-string v3, "72402"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "72403"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "72404"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5860
    :cond_0
    const-string v0, "TIM"

    .line 5868
    .end local v1    # "ntClass":I
    :cond_1
    :goto_0
    return-object v0

    .line 5861
    .restart local v1    # "ntClass":I
    :cond_2
    const-string v3, "72410"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72411"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72406"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "72423"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5862
    :cond_3
    const-string v0, "VIVO"

    goto :goto_0

    .line 5865
    :cond_4
    const-string v3, "[checkIgnoreNITZ] - no change"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3925
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 3928
    .local v2, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3929
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v0, 0x1

    .line 3932
    .local v0, "equalsMcc":Z
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3936
    :goto_0
    return v0

    .line 3934
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private dismissDeniedDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5506
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5508
    :try_start_0
    const-string v0, "dismiss deniedDialog"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5509
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5514
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 5517
    :cond_0
    :goto_0
    return-void

    .line 5511
    :catch_0
    move-exception v0

    .line 5514
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    throw v0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3689
    move v5, p1

    .line 3690
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 3691
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 3693
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 3694
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 3695
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 3696
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 3697
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 3698
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 3700
    move-object v2, v6

    .line 3705
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 3696
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getOtasp()I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 4712
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_UpdateOTASPusingMIN"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4714
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 4715
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: bad mMin=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4716
    const/4 v0, 0x1

    .line 4729
    .local v0, "provisioningState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4730
    return v0

    .line 4718
    .end local v0    # "provisioningState":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v2, "1111110111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "test_cdma_setup"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4721
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "provisioningState":I
    goto :goto_0

    .line 4723
    .end local v0    # "provisioningState":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "provisioningState":I
    goto :goto_0

    .line 4727
    .end local v0    # "provisioningState":I
    :cond_4
    const/4 v0, 0x3

    .restart local v0    # "provisioningState":I
    goto :goto_0
.end method

.method private getPlmnPsOnly(I)Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5741
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5742
    .local v1, "configPsOnlyList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 5743
    .local v0, "configPsOnly":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 5744
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5747
    :cond_0
    const-string v5, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5748
    .local v3, "sim1Numeric":Ljava/lang/String;
    const-string v5, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5749
    .local v4, "sim2Numeric":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 5750
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_7

    .line 5751
    aget-object v8, v0, v2

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 5750
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5751
    :sswitch_0
    const-string v9, "51068"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v9, "51088"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v9, "51009"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "51028"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    .line 5754
    :pswitch_0
    aget-object v5, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    aget-object v5, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne p1, v7, :cond_2

    .line 5756
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Bolt:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    .line 5768
    .end local v2    # "i":I
    :goto_2
    return-object v5

    .line 5761
    .restart local v2    # "i":I
    :pswitch_1
    aget-object v5, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    aget-object v5, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne p1, v7, :cond_2

    .line 5763
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Smartfren:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    goto :goto_2

    .line 5768
    .end local v2    # "i":I
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->None:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    goto :goto_2

    .line 5751
    :sswitch_data_0
    .sparse-switch
        0x301de1d -> :sswitch_2
        0x301de5a -> :sswitch_3
        0x301ded6 -> :sswitch_0
        0x301df14 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 3950
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3951
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3954
    .local v4, "numericArray":[Ljava/lang/String;
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 3963
    :cond_0
    :goto_0
    return v6

    .line 3958
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3959
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3960
    const/4 v6, 0x1

    goto :goto_0

    .line 3958
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 3967
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 3968
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3971
    .local v4, "numericArray":[Ljava/lang/String;
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 3980
    :cond_0
    :goto_0
    return v6

    .line 3975
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3976
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3977
    const/4 v6, 0x1

    goto :goto_0

    .line 3975
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3905
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 3909
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 3910
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 3912
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v6

    .line 3913
    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v6

    .line 3915
    .local v1, "equalsOnss":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    return v6

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_1
    move v0, v7

    .line 3912
    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_2
    move v1, v7

    .line 3913
    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_3
    move v6, v7

    .line 3915
    goto :goto_2
.end method

.method private notiHomePlmn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5233
    const-string v3, "persist.radio.rplmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5234
    .local v0, "checkRplmn":Ljava/lang/String;
    const-string v3, "gsm.sim.state"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5235
    .local v1, "simState":Ljava/lang/String;
    const-string v3, "ril.simtype"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5237
    .local v2, "simType":Ljava/lang/String;
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5238
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    .line 5241
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE_ROAMING : notiHomePlmn, persist.radio.rplmn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), gsm.sim.state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5243
    const-string v3, "oversea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5244
    const-string v3, "persist.radio.rplmn"

    const-string v4, "domestic"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5247
    const-string v3, "LTE_ROAMING : Roaming -> Home : Airplane or no service scenario from modem noti"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5248
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    .line 5249
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 5254
    :goto_0
    return-void

    .line 5251
    :cond_2
    const-string v3, "LTE_ROAMING : Roaming -> Home : Reboot scenario, from modem noti"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5252
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRetrySyncPrefMode:Z

    goto :goto_0
.end method

.method private notifyApnChangeToRIL()V
    .locals 7

    .prologue
    .line 5049
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5050
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5053
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5054
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5055
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5057
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5058
    const-string v4, "LTE_ROAMING : notifyApnChangeToRIL"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5064
    :goto_0
    if-eqz v1, :cond_0

    .line 5065
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 5066
    :cond_0
    if-eqz v0, :cond_1

    .line 5067
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5073
    :cond_1
    :goto_1
    return-void

    .line 5059
    :catch_0
    move-exception v2

    .line 5060
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occured during refresh Attach APN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5069
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5070
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "close fail!!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v12, 0x3ed

    const/16 v11, 0x3ec

    const/16 v10, 0x3eb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3734
    new-instance v3, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v3}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 3736
    .local v3, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRestrictedStateChanged: E rs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3738
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 3739
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 3740
    .local v0, "ints":[I
    aget v4, v0, v6

    .line 3742
    .local v4, "state":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_9

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 3746
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v8, :cond_2

    .line 3747
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_a

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 3750
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_b

    move v5, v7

    :goto_2
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3754
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRestrictedStateChanged: new rs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3756
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3757
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3758
    const-string v5, "ril.restricted"

    const-string v8, "ALL"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemProperties : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "ril.restricted"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3769
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3770
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3771
    const/16 v5, 0x3e9

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3782
    :cond_4
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3783
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_5
    move v2, v7

    .line 3784
    .local v2, "isPrev":Z
    :goto_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_6
    move v1, v7

    .line 3785
    .local v1, "isCurr":Z
    :goto_6
    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    .line 3786
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3839
    .end local v1    # "isCurr":Z
    .end local v2    # "isPrev":Z
    :cond_7
    :goto_7
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3841
    .end local v0    # "ints":[I
    .end local v4    # "state":I
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: X rs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3842
    return-void

    .restart local v0    # "ints":[I
    .restart local v4    # "state":I
    :cond_9
    move v5, v6

    .line 3742
    goto/16 :goto_0

    :cond_a
    move v5, v6

    .line 3747
    goto/16 :goto_1

    :cond_b
    move v5, v6

    .line 3750
    goto/16 :goto_2

    .line 3759
    :cond_c
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3760
    const-string v5, "ril.restricted"

    const-string v8, "PS"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3761
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3762
    const-string v5, "ril.restricted"

    const-string v8, "CS"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3764
    :cond_e
    const-string v5, "ril.restricted"

    const-string v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3772
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3773
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3774
    const/16 v5, 0x3ea

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    :cond_10
    move v2, v6

    .line 3783
    goto :goto_5

    .restart local v2    # "isPrev":Z
    :cond_11
    move v1, v6

    .line 3784
    goto :goto_6

    .line 3787
    .restart local v1    # "isCurr":Z
    :cond_12
    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    .line 3788
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_7

    .line 3791
    .end local v1    # "isCurr":Z
    .end local v2    # "isPrev":Z
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3792
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-nez v5, :cond_14

    .line 3794
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3795
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-nez v5, :cond_15

    .line 3797
    const/16 v5, 0x3ee

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3798
    :cond_15
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3800
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3802
    :cond_16
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-nez v5, :cond_19

    .line 3804
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-nez v5, :cond_17

    .line 3806
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3807
    :cond_17
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3809
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3810
    :cond_18
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3812
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3814
    :cond_19
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3816
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 3818
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3819
    :cond_1a
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3821
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3822
    :cond_1b
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3824
    const/16 v5, 0x3ee

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3827
    :cond_1c
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3829
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3830
    :cond_1d
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3832
    const/16 v5, 0x3ee

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7

    .line 3833
    :cond_1e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3835
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_7
.end method

.method private onSprintRoamingIndicator(Z)V
    .locals 14
    .param p1, "roaming"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 4866
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "roam_guard_data_international"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_6

    move v5, v10

    .line 4867
    .local v5, "gsmDataGuardEnabled":Z
    :goto_0
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "roam_guard_sms_international"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_7

    move v6, v10

    .line 4868
    .local v6, "gsmSmsGuardEnabled":Z
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "roam_guard_data_lte"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_8

    move v4, v10

    .line 4869
    .local v4, "domesticLteDataGuardEnabled":Z
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "roam_guard_data_lte_international"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_9

    move v8, v10

    .line 4870
    .local v8, "internationalLteDataGuardEnabled":Z
    :goto_3
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "roam_setting_data_international"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_a

    move v9, v10

    .line 4872
    .local v9, "internationalRoamEnabled":Z
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSprintRoamingIndicator: gsmDataGuardEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " gsmSmsGuardEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " domesticLteDataGuardEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " internationalLteDataGuardEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4875
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->IsDomesticLteRoaming()Z

    move-result v0

    .line 4876
    .local v0, "IsDomesticLteRoaming":Z
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->IsInternationalLteRoaming()Z

    move-result v1

    .line 4877
    .local v1, "IsInternationalLteRoaming":Z
    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eqz v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsDomesticLteRoaming:Z

    if-ne v11, v0, :cond_3

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsInternationalLteRoaming:Z

    if-eq v11, v1, :cond_4

    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiConnected()Z

    move-result v11

    if-nez v11, :cond_4

    .line 4882
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 4883
    const-string v11, "onSprintRoamingIndicator : showDataGuard followed by force cleanup for international gsm roam"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4886
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4887
    .local v3, "dialogIntent":Landroid/content/Intent;
    const-string v11, "status"

    const-string v12, "internationalRoam"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4888
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4889
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4892
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    :cond_4
    if-eqz v6, :cond_5

    if-eqz p1, :cond_5

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_5

    .line 4894
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4895
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "roaming"

    .line 4896
    .local v2, "currentRoam":Ljava/lang/String;
    const-string v11, "status"

    invoke-virtual {v7, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4897
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_ROAMING_STATUS_CHANGED: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4898
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4899
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4900
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 4902
    .end local v2    # "currentRoam":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSprintRoamingIndicator: IsInternationalGsmRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsDomesticLteRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsInternationalLteRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "internationalRoamEnabled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4905
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsDomesticLteRoaming:Z

    .line 4906
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldIsInternationalLteRoaming:Z

    .line 4907
    return-void

    .end local v0    # "IsDomesticLteRoaming":Z
    .end local v1    # "IsInternationalLteRoaming":Z
    .end local v4    # "domesticLteDataGuardEnabled":Z
    .end local v5    # "gsmDataGuardEnabled":Z
    .end local v6    # "gsmSmsGuardEnabled":Z
    .end local v8    # "internationalLteDataGuardEnabled":Z
    .end local v9    # "internationalRoamEnabled":Z
    :cond_6
    move v5, v11

    .line 4866
    goto/16 :goto_0

    .restart local v5    # "gsmDataGuardEnabled":Z
    :cond_7
    move v6, v11

    .line 4867
    goto/16 :goto_1

    .restart local v6    # "gsmSmsGuardEnabled":Z
    :cond_8
    move v4, v11

    .line 4868
    goto/16 :goto_2

    .restart local v4    # "domesticLteDataGuardEnabled":Z
    :cond_9
    move v8, v11

    .line 4869
    goto/16 :goto_3

    .restart local v8    # "internationalLteDataGuardEnabled":Z
    :cond_a
    move v9, v11

    .line 4870
    goto/16 :goto_4
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 3709
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 3724
    :goto_0
    return-void

    .line 3717
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3718
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3723
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private radioOffForTwoChipDsds()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5873
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-static {v9, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5874
    .local v5, "sim2StateCheck":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 5875
    .local v1, "phone1":Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 5876
    .local v2, "phone2":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    .line 5877
    .local v4, "radioState":I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 5879
    .local v0, "mSlot1Type":I
    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    if-nez v7, :cond_0

    .line 5881
    const-string v7, "ril.voice.rat"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5884
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 5886
    .local v6, "slot2CallState":Lcom/android/internal/telephony/Call$State;
    const-string v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 5887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DSDS_TWOCHIP] radioOffForTwoChipDsds() - mSlot1Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DSDS_TWOCHIP] radioOffForTwoChipDsds() - slot2CallState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radioState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5889
    const/16 v7, 0x10

    if-eq v0, v7, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    .line 5892
    const-string v7, "[DSDS_TWOCHIP] send SLOT1_RADIO_OFF broadcast"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5893
    if-eq v4, v11, :cond_3

    .line 5894
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5895
    .local v3, "powerIntent":Landroid/content/Intent;
    const-string v7, "state"

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5896
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5908
    .end local v3    # "powerIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 5898
    :cond_3
    const-string v7, "[DSDS_TWOCHIP] Not send SLOT1_RADIO_OFF !!!!!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5900
    :cond_4
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    if-eqz v7, :cond_2

    .line 5901
    const-string v7, "[DSDS_TWOCHIP] send SLOT1_RADIO_ON broadcast"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5902
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5903
    .restart local v3    # "powerIntent":Landroid/content/Intent;
    const-string v7, "state"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5904
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5905
    sput-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 3894
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3846
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3847
    .local v0, "salesCode":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3883
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3884
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 3861
    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SBM"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KDI"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DispRssiOneStepPerSec"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3872
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 3876
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 3880
    goto :goto_0

    .line 3847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private registerForWfcRegistrationStatus()V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 839
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 841
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 4466
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4478
    :cond_0
    :goto_0
    return-void

    .line 4471
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4474
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 4475
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4495
    :cond_0
    :goto_0
    return-void

    .line 4485
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4486
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4488
    const-string v0, "GMT"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4489
    const-string v0, "Do NOT revert timezone to invalid value"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4493
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 4422
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 4423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 4425
    const-string v0, "ril.nitz.savedattime"

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    return-void
.end method

.method private sendCallState(II)V
    .locals 8
    .param p1, "callslot"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v7, 0x1

    .line 5785
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5786
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5788
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 5789
    .local v3, "mphonestate1":Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 5791
    .local v4, "mphonestate2":Lcom/android/internal/telephony/Phone;
    const/4 v5, 0x5

    .line 5792
    .local v5, "rawLen":I
    if-nez p1, :cond_1

    .line 5794
    const/16 v6, 0xb

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5795
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5796
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5797
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5798
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSDS_TWOCHIP] Block slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call Value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5804
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5805
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5830
    :cond_0
    :goto_0
    return-void

    .line 5806
    :catch_0
    move-exception v2

    .line 5807
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5800
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 5801
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSDS_TWOCHIP] sendCallState() error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5804
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5805
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 5806
    :catch_2
    move-exception v2

    .line 5807
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5803
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 5804
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5805
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5808
    :goto_1
    throw v6

    .line 5806
    :catch_3
    move-exception v2

    .line 5807
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5811
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-ne p1, v7, :cond_0

    .line 5813
    const/16 v6, 0xb

    :try_start_5
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5814
    const/16 v6, 0x18

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5815
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5816
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5817
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5818
    const-string v6, "[DSDS_TWOCHIP]  Block slot1 call"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5823
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5824
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 5825
    :catch_4
    move-exception v2

    .line 5826
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5819
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 5820
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSDS_TWOCHIP] sendCallState() error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5823
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5824
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 5825
    :catch_6
    move-exception v2

    .line 5826
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 5822
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 5823
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5824
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 5827
    :goto_2
    throw v6

    .line 5825
    :catch_7
    move-exception v2

    .line 5826
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setMobileNetworkStatus()V
    .locals 8

    .prologue
    .line 5259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5260
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5261
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "mobile_network_status"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-byte v4, v5

    .line 5263
    .local v4, "status":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileNetworkStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5265
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5266
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5267
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5268
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5269
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5274
    :goto_0
    if-eqz v1, :cond_0

    .line 5275
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 5276
    :cond_0
    if-eqz v0, :cond_1

    .line 5277
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5282
    :cond_1
    :goto_1
    return-void

    .line 5270
    :catch_0
    move-exception v2

    .line 5271
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception occured during refresh Attach APN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5279
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5280
    .local v3, "ex":Ljava/io/IOException;
    const-string v5, "close fail!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    .prologue
    .line 4516
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNotification: create notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4519
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112005d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 4521
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_1

    .line 4522
    const-string v8, "Ignore all the notifications"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4598
    :cond_0
    :goto_0
    return-void

    .line 4526
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4529
    .local v0, "context":Landroid/content/Context;
    const-string v1, ""

    .line 4530
    .local v1, "details":Ljava/lang/CharSequence;
    const v8, 0x10400b3

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 4531
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    .line 4533
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    .line 4559
    :goto_1
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNotification: put notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4561
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4562
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x108008a

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4588
    :goto_2
    const-string v8, "notification"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 4591
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    if-eq p1, v8, :cond_2

    const/16 v8, 0x3ec

    if-ne p1, v8, :cond_4

    .line 4593
    :cond_2
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 4535
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    int-to-long v2, v8

    .line 4536
    .local v2, "dataSubId":J
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-nez v8, :cond_0

    .line 4539
    const/16 v5, 0x378

    .line 4540
    const v8, 0x10400b4

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4541
    goto/16 :goto_1

    .line 4543
    .end local v2    # "dataSubId":J
    :pswitch_2
    const/16 v5, 0x378

    .line 4544
    goto/16 :goto_1

    .line 4546
    :pswitch_3
    const v8, 0x10400b7

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4547
    goto/16 :goto_1

    .line 4549
    :pswitch_4
    const v8, 0x10400b6

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4550
    goto/16 :goto_1

    .line 4552
    :pswitch_5
    const v8, 0x10400b5

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4553
    goto/16 :goto_1

    .line 4574
    :cond_3
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x108008a

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    goto/16 :goto_2

    .line 4596
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 4533
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 36
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 4142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 4143
    .local v24, "start":J
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " delay="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v24, p2

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4147
    const v31, 0x1005f5

    move/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4151
    const/4 v8, 0x0

    .line 4155
    .local v8, "bMccChanged":Z
    const-string v31, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4156
    new-instance v15, Landroid/content/Intent;

    const-string v31, "com.samsung.intent.action.NITZ_SET_TIME"

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4157
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v31, 0x20000000

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4164
    :try_start_0
    const-string v31, "GMT"

    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 4166
    .local v9, "c":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 4167
    const/16 v31, 0x10

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4169
    const-string v31, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 4171
    .local v21, "nitzSubs":[Ljava/lang/String;
    const/16 v31, 0x0

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v29, v0

    .line 4172
    .local v29, "year":I
    const/16 v31, 0x7f5

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 4173
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ year: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " exceeds limit, skip NITZ time update"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4397
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v29    # "year":I
    :goto_0
    return-void

    .line 4176
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v29    # "year":I
    :cond_0
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4179
    const/16 v31, 0x1

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v20, v31, -0x1

    .line 4180
    .local v20, "month":I
    const/16 v31, 0x2

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4182
    const/16 v31, 0x2

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4183
    .local v10, "date":I
    const/16 v31, 0x5

    move/from16 v0, v31

    invoke-virtual {v9, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 4185
    const/16 v31, 0x3

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4186
    .local v13, "hour":I
    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-virtual {v9, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 4188
    const/16 v31, 0x4

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 4189
    .local v17, "minute":I
    const/16 v31, 0xc

    move/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4191
    const/16 v31, 0x5

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 4192
    .local v22, "second":I
    const/16 v31, 0xd

    move/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4194
    const/16 v31, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    const/16 v23, 0x1

    .line 4196
    .local v23, "sign":Z
    :goto_1
    const/16 v31, 0x6

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 4198
    .local v27, "tzOffset":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_b

    const/16 v31, 0x7

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4208
    .local v11, "dst":I
    :goto_2
    if-eqz v23, :cond_c

    const/16 v31, 0x1

    :goto_3
    mul-int v31, v31, v27

    mul-int/lit8 v31, v31, 0xf

    mul-int/lit8 v31, v31, 0x3c

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    .line 4210
    const/16 v30, 0x0

    .line 4216
    .local v30, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x9

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    .line 4217
    const/16 v31, 0x8

    aget-object v31, v21, v31

    const/16 v32, 0x21

    const/16 v33, 0x2f

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v28

    .line 4219
    .local v28, "tzname":Ljava/lang/String;
    const/16 v31, 0x8

    aget-object v31, v21, v31

    const-string v32, "America!Port_au_Prince"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 4220
    const/16 v31, 0x5f

    const/16 v32, 0x2d

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v28

    .line 4223
    :cond_1
    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 4225
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_RIL_DelayedTimezoneUpdate"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    .line 4228
    const/16 v31, 0x9

    aget-object v7, v21, v31

    .line 4229
    .local v7, "NitzOperator":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 4230
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4231
    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4232
    .local v6, "NewMcc":Ljava/lang/String;
    const-string v31, "000"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 4233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 4234
    const/4 v8, 0x0

    .line 4238
    :goto_4
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 4245
    .end local v6    # "NewMcc":Ljava/lang/String;
    .end local v7    # "NitzOperator":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 4246
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[NITZ] get the MCC. "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4247
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v26

    .line 4249
    .local v26, "tempIso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.iso-country"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4250
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 4251
    const/16 v30, 0x0

    .line 4252
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 4259
    .end local v26    # "tempIso":Ljava/lang/String;
    .end local v28    # "tzname":Ljava/lang/String;
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    const-string v32, "phone"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v16

    .line 4263
    .local v16, "iso":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", dst = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", ZoneOffset = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", Year ="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4265
    if-nez v30, :cond_4

    .line 4267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 4268
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_10

    .line 4269
    if-eqz v11, :cond_f

    const/16 v31, 0x1

    :goto_6
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move/from16 v0, v27

    move/from16 v1, v31

    move-wide/from16 v2, v32

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 4283
    :cond_4
    :goto_7
    if-nez v30, :cond_5

    const-string v31, "ca"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    const v31, -0x1b77400

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v11, v0, :cond_5

    .line 4284
    const-string v31, "[NITZ] Exceptional case: Vancuver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4285
    if-eqz v11, :cond_12

    const/16 v31, 0x1

    :goto_8
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v30

    .line 4289
    :cond_5
    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    if-eqz v11, :cond_13

    const/16 v31, 0x1

    :goto_9
    move/from16 v0, v32

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 4294
    :cond_6
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 4295
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 4296
    if-eqz v11, :cond_14

    const/16 v31, 0x1

    :goto_a
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 4297
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 4300
    :cond_7
    if-eqz v30, :cond_9

    .line 4301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 4302
    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4304
    :cond_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 4307
    :cond_9
    const-string v31, "gsm.ignore-nitz"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4308
    .local v14, "ignore":Ljava/lang/String;
    if-eqz v14, :cond_15

    const-string v31, "yes"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 4309
    const-string v31, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4393
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "date":I
    .end local v11    # "dst":I
    .end local v13    # "hour":I
    .end local v14    # "ignore":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v22    # "second":I
    .end local v23    # "sign":Z
    .end local v27    # "tzOffset":I
    .end local v29    # "year":I
    .end local v30    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v12

    .line 4394
    .local v12, "ex":Ljava/lang/RuntimeException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ex="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4396
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    :goto_b
    const-string v31, "ril.sib16.last.systemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4194
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "date":I
    .restart local v13    # "hour":I
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "minute":I
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v22    # "second":I
    .restart local v29    # "year":I
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 4198
    .restart local v23    # "sign":Z
    .restart local v27    # "tzOffset":I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 4208
    .restart local v11    # "dst":I
    :cond_c
    const/16 v31, -0x1

    goto/16 :goto_3

    .line 4236
    .restart local v6    # "NewMcc":Ljava/lang/String;
    .restart local v7    # "NitzOperator":Ljava/lang/String;
    .restart local v28    # "tzname":Ljava/lang/String;
    .restart local v30    # "zone":Ljava/util/TimeZone;
    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 4254
    .end local v6    # "NewMcc":Ljava/lang/String;
    .end local v7    # "NitzOperator":Ljava/lang/String;
    :cond_e
    :try_start_1
    const-string v31, "[NITZ] get the TimeZone."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4269
    .end local v28    # "tzname":Ljava/lang/String;
    .restart local v16    # "iso":Ljava/lang/String;
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 4277
    :cond_10
    if-eqz v11, :cond_11

    const/16 v31, 0x1

    :goto_c
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v30

    goto/16 :goto_7

    :cond_11
    const/16 v31, 0x0

    goto :goto_c

    .line 4285
    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 4289
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 4296
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 4314
    .restart local v14    # "ignore":Ljava/lang/String;
    :cond_15
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v31

    if-eqz v31, :cond_18

    .line 4317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v18, v32, p2

    .line 4320
    .local v18, "millisSinceNitzReceived":J
    const-wide/16 v32, 0x0

    cmp-long v31, v18, v32

    if-gez v31, :cond_16

    .line 4323
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4391
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4330
    :cond_16
    const-wide/32 v32, 0x7fffffff

    cmp-long v31, v18, v32

    if-lez v31, :cond_17

    .line 4333
    :try_start_4
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/32 v32, 0x5265c00

    div-long v32, v18, v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " days"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4391
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 4341
    :cond_17
    const/16 v31, 0xe

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v32, v0

    :try_start_6
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 4344
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: Setting time of day to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " NITZ receive delay(ms): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " gained(ms): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " from "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4351
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 4352
    const-string v31, "GsmSST"

    const-string v32, "NITZ: after Setting time of day"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_RIL_DisplayNitzPopup"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 4356
    sget v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_18

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x104090b

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 4358
    const-string v31, "Show <Auto-Update of Time and Date>"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4359
    sget v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    add-int/lit8 v31, v31, 0x1

    sput v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I

    .line 4364
    .end local v18    # "millisSinceNitzReceived":J
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_RIL_DelayedTimezoneUpdate"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 4366
    if-eqz v30, :cond_1c

    .line 4367
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: zone="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", tzOffset= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mGotCountryCode= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4372
    :goto_d
    const-string v31, "SKT"

    const-string v32, "EUR"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    if-eqz v8, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v31

    if-nez v31, :cond_19

    .line 4373
    new-instance v15, Landroid/content/Intent;

    .end local v15    # "intent":Landroid/content/Intent;
    const-string v31, "android.intent.action.MANUAL_SET_TIME"

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4374
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4378
    :cond_19
    const-string v31, "gsm.nitz.time"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_RIL_DelayedTimezoneUpdate"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_SupportActivationDate"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 4382
    :cond_1a
    const-string v31, "gsm.nitz.time-elapsedtime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    :cond_1b
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 4389
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4391
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_b

    .line 4369
    :cond_1c
    :try_start_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: zone=null, tzOffset= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mGotCountryCode= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_d

    .line 4391
    .end local v15    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v31

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v31
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method private setTwochipDsdsOnRoaming()V
    .locals 3

    .prologue
    .line 6021
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isTwochipDsdsOnRoamingModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6045
    :cond_0
    :goto_0
    return-void

    .line 6025
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 6029
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 6031
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6032
    :cond_2
    const-string v1, "ril.twochip.roaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6037
    :cond_3
    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "455"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6040
    :cond_4
    const-string v1, "ril.twochip.roaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6043
    :cond_5
    const-string v1, "ril.twochip.roaming"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDeniedDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 5489
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    if-nez v1, :cond_0

    .line 5490
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5492
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5493
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5494
    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 5499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 5500
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 5501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 5503
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private switchNetworkTo(I)V
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 5174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataLockFeature] switchNetworkTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5176
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 5177
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5178
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 5183
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubId(I)[J

    move-result-object v1

    aget-wide v2, v1, v3

    invoke-static {v4, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->setDefaultSubId(IJ)V

    .line 5184
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 5185
    return-void

    .line 5180
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 5181
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method private unregisterForWfcRegistrationStatus()V
    .locals 2

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 848
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 849
    return-void
.end method

.method private updateNationalRoamingMode()V
    .locals 3

    .prologue
    .line 4500
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_national_roaming_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    .line 4502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNationalRoamingMode, roamingMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4503
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 4504
    return-void
.end method

.method private updateOtaspState()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 4675
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOtasp()I

    move-result v2

    .line 4676
    .local v2, "otaspMode":I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 4677
    .local v1, "oldOtaspMode":I
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 4679
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v1, v4, :cond_1

    .line 4681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " call notifyOtaspChanged old otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new otaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4685
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    if-ne v4, v6, :cond_0

    .line 4686
    const-string v4, "ril.otasp_state"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4689
    :cond_0
    const-string v4, "VZW"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4690
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4691
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "setup_wizard_skip"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4693
    .local v0, "SetupWizardSkip":Z
    if-nez v0, :cond_2

    .line 4694
    const-string v4, "SetupWizardSkip : false , send Current OtaspMode to setup Wizard"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4695
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 4704
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 4697
    .restart local v0    # "SetupWizardSkip":Z
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 4698
    const-string v4, "SetupWizardSkip : true , send OTASP_NOT_NEEDED to setup Wizard for skipping."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4701
    .end local v0    # "SetupWizardSkip":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    goto :goto_0
.end method

.method private updateRegistrationStatus()V
    .locals 3

    .prologue
    .line 865
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    const-string v2, "GsmServiceStateTracker.updateRegistrationStatus"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 896
    return-void
.end method

.method private updateRuimLoadedEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4649
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 4650
    const-string v2, "mUiccController is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4672
    :cond_0
    :goto_0
    return-void

    .line 4653
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    if-ne v2, v5, :cond_2

    .line 4654
    const-string v2, "RuimLoadedEvent is already set"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4657
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 4659
    .local v1, "ruimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_3

    .line 4660
    const-string v2, "ruimUiccApplication is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4663
    :cond_3
    if-eqz v1, :cond_0

    .line 4664
    const-string v2, "[Global mode] Ruim card found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4665
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 4666
    .local v0, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 4667
    const-string v2, "register EVENT_RUIM_RECORDS_LOADED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4668
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4669
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->RuimLoadedEvent:Z

    goto :goto_0
.end method

.method private updateSignalStrength()V
    .locals 3

    .prologue
    .line 821
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSignalStrength mMovialWfcRegistered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-nez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 832
    return-void
.end method


# virtual methods
.method protected GetTimezoneInfoUsingMcc(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "checkMccChange"    # Z
    .param p3, "isDelayedTZUpdate"    # Z
    .param p4, "savedZoneID"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 4913
    const/4 v5, 0x0

    .line 4914
    .local v5, "zoneId":Ljava/lang/String;
    const-string v6, "ril.timezoneID"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4916
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DelayedTimezoneUpdate"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4918
    if-eqz p3, :cond_4

    .line 4919
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4920
    move-object v5, p4

    .line 4933
    :cond_0
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4934
    .local v0, "NewMcc":Ljava/lang/String;
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    const-string v6, "000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "111"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "001"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "999"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4938
    if-nez p2, :cond_5

    .line 4939
    const-string v6, "GsmSST"

    const-string v7, "Don\'t check Mcc"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZONE ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4952
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4953
    .local v2, "manualTimeZone":Ljava/util/TimeZone;
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 4954
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4955
    const-string v6, "TIMEZONE Update"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4956
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4958
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 4959
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 4980
    .end local v0    # "NewMcc":Ljava/lang/String;
    .end local v2    # "manualTimeZone":Ljava/util/TimeZone;
    :cond_3
    :goto_1
    return-void

    .line 4923
    :cond_4
    const/16 v6, 0x67

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4924
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .line 4925
    .local v4, "numericZone":[Ljava/lang/String;
    aput-object p1, v4, v8

    .line 4926
    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 4927
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4928
    const-wide/16 v6, 0x1f40

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 4942
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "numericZone":[Ljava/lang/String;
    .restart local v0    # "NewMcc":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mcc is changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4943
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-nez v6, :cond_6

    .line 4944
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    goto/16 :goto_0

    .line 4946
    :cond_6
    const-string v6, "Do not update mPrevMcc because not in service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4961
    .restart local v2    # "manualTimeZone":Ljava/util/TimeZone;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-eqz v6, :cond_8

    .line 4962
    const-string v6, "In case of no service, we do not display manual timezone popup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4963
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DelayedTimezoneUpdate"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4965
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    goto :goto_1

    .line 4970
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4971
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME (MCC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4972
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.MCC_SET_TIME"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4973
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4974
    const-string v6, "MCC"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4975
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected dismissRescanDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5580
    :try_start_0
    const-string v0, "ManualSelectionReceiver"

    const-string v1, "dismissRescanDialog"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5585
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 5588
    :cond_0
    :goto_0
    return-void

    .line 5582
    :catch_0
    move-exception v0

    .line 5585
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    throw v0
.end method

.method protected displayLUrejectcause()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const-wide/32 v8, 0x1d0d8

    const/16 v7, 0x66

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 5310
    const/4 v0, 0x0

    .line 5311
    .local v0, "id":I
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5313
    .local v2, "salesCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay(); mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ss.getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRilRegState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLuRejCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after2min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5316
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-ne v3, v6, :cond_6

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    if-nez v3, :cond_6

    .line 5319
    const-string v3, "TMB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TMK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5320
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v10, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 5322
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v3, :pswitch_data_0

    .line 5339
    :pswitch_0
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-ne v3, v5, :cond_8

    .line 5340
    const-string v3, "updateSpnDisplay: display T-Mobile PLMN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5348
    :cond_3
    :goto_0
    const-string v3, "ATT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "AIO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5349
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v10, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_d

    .line 5351
    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    sparse-switch v3, :sswitch_data_0

    .line 5398
    const v0, 0x1040277

    .line 5442
    :cond_6
    :goto_1
    return v0

    .line 5326
    :pswitch_1
    const v0, 0x104090d

    .line 5327
    goto :goto_0

    .line 5332
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 5333
    const v0, 0x104090d

    goto :goto_0

    .line 5335
    :cond_7
    const v0, 0x104028f

    .line 5337
    goto :goto_0

    .line 5342
    :cond_8
    const v0, 0x104090e

    goto :goto_0

    .line 5353
    :sswitch_0
    const v0, 0x104090f

    .line 5354
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_9

    .line 5355
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5357
    :cond_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5358
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5363
    :sswitch_1
    const v0, 0x1040910

    .line 5364
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5365
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5367
    :cond_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5368
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5373
    :sswitch_2
    const v0, 0x1040911

    .line 5374
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5375
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5377
    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5378
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto :goto_1

    .line 5383
    :sswitch_3
    const v0, 0x1040912

    .line 5384
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5385
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5387
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5388
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDeniedDialog(I)V

    goto/16 :goto_1

    .line 5401
    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v6, :cond_e

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-nez v3, :cond_6

    .line 5402
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 5405
    const v0, 0x1040277

    .line 5406
    goto/16 :goto_1

    .line 5410
    :cond_f
    const-string v3, "BMC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "BWA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "FMC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "KDO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "MTA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "PCM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "RWC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "SOL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "SPC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "TLS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "VMC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "ESK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "GLW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "MCT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "VTR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "XAC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5413
    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    if-eq v3, v10, :cond_11

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_13

    .line 5415
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5417
    .local v1, "isVoiceCapable":Z
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v3, :pswitch_data_1

    .line 5426
    :pswitch_3
    if-nez v1, :cond_12

    .line 5427
    const v0, 0x1040277

    goto/16 :goto_1

    .line 5422
    :pswitch_4
    const v0, 0x1040913

    .line 5423
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    goto/16 :goto_1

    .line 5429
    :cond_12
    const v0, 0x104028f

    goto/16 :goto_1

    .line 5433
    .end local v1    # "isVoiceCapable":Z
    :cond_13
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    if-ne v3, v5, :cond_6

    .line 5434
    const-string v3, "updateSpnDisplay() Already get reject cause so display text"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5435
    const v0, 0x1040913

    goto/16 :goto_1

    .line 5322
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5351
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xfe -> :sswitch_3
    .end sparse-switch

    .line 5417
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected displayTimeZoneRecommend(Ljava/lang/String;I)V
    .locals 13
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "serviceState"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v12, 0x1

    .line 5957
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    if-eqz p2, :cond_1

    .line 6016
    :cond_0
    :goto_0
    return-void

    .line 5962
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5963
    .local v0, "currentMcc":I
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5964
    .local v1, "currentMnc":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MCC"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5965
    .local v2, "getPreviousMcc":Ljava/lang/String;
    const/4 v6, -0x1

    .line 5966
    .local v6, "previousMcc":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 5967
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5969
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MNC"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5970
    .local v3, "getPreviousMnc":Ljava/lang/String;
    const/4 v7, -0x1

    .line 5971
    .local v7, "previousMnc":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 5972
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5975
    :cond_3
    if-eqz v0, :cond_4

    .line 5976
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MCC"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5977
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "PREV_REGD_MNC"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5980
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    if-le v9, v12, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_0

    .line 5987
    :cond_5
    if-eqz v0, :cond_0

    const/16 v9, 0x1cc

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1c7

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1c6

    if-eq v0, v9, :cond_0

    const/16 v9, 0x1d2

    if-eq v0, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    if-nez v9, :cond_0

    .line 5990
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->getTimeZonesForMcc(I)[Ljava/lang/String;

    move-result-object v8

    .line 5991
    .local v8, "timeZoneList":[Ljava/lang/String;
    if-eq v0, v6, :cond_7

    .line 5992
    if-eqz v8, :cond_6

    .line 5993
    const-string v9, "GsmSST"

    const-string v10, "broadcast TZ Recommend"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5994
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.ACTION_TZ_RCMD_TIMEZONE_OF_CURR_MCC"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5995
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "currentMcc"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5996
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5999
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v9, "GsmSST"

    const-string v10, "not broadcast TZ Recommend"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6002
    :cond_7
    if-eq v1, v7, :cond_9

    .line 6003
    if-eqz v8, :cond_8

    array-length v9, v8

    if-le v9, v12, :cond_8

    .line 6004
    const-string v9, "GsmSST"

    const-string v10, "broadcast TZ Recommend Same Mcc"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6006
    .local v5, "intentFwd":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6009
    .end local v5    # "intentFwd":Landroid/content/Intent;
    :cond_8
    const-string v9, "GsmSST"

    const-string v10, "not broadcast TZ Recommend Same Mcc"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6013
    :cond_9
    const-string v9, "GsmSST"

    const-string v10, "displayTimeZoneRecommend. Do nothing."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 1135
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1150
    const-string v0, "2GNRP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataNationalRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1155
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1162
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1169
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 1170
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4746
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurDataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4782
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1174
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method protected getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4401
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 4404
    :goto_0
    return v1

    .line 4401
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4403
    :catch_0
    move-exception v0

    .line 4404
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method protected getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4410
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 4413
    :goto_0
    return v1

    .line 4410
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4412
    :catch_0
    move-exception v0

    .line 4413
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 13

    .prologue
    const v12, 0x7fffffff

    .line 4060
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_2

    .line 4062
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v10, :cond_1

    .line 4063
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4068
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 4130
    :cond_0
    :goto_1
    return-object v6

    .line 4065
    :cond_1
    const-string v10, "getCellLocation(): X good mCellLoc= xxx"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4070
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 4071
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_7

    .line 4084
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 4085
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 4086
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_4

    move-object v3, v7

    .line 4087
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 4088
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 4089
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4091
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_1

    .line 4094
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_5

    move-object v5, v7

    .line 4095
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 4096
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 4097
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4099
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_1

    .line 4102
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_5
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_3

    :cond_6
    move-object v4, v7

    .line 4105
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 4106
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 4107
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v12, :cond_3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v12, :cond_3

    .line 4109
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 4111
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    goto :goto_2

    .line 4124
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    sget-boolean v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v10, :cond_8

    .line 4125
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4130
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_1

    .line 4127
    :cond_8
    const-string v10, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc= xxx"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 926
    const-string v0, "REG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 941
    :goto_0
    return-object v0

    .line 928
    :cond_0
    const-string v0, "AUTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    goto :goto_0

    .line 930
    :cond_1
    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_2
    const-string v0, "ESN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRuimid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :cond_4
    const-string v0, "WIPINET_VAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWipiNetValInit:Ljava/lang/String;

    goto :goto_0

    .line 941
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5220
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5221
    const-string v1, "mMdn is null, re-Read from RuimRecords"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5222
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 5223
    .local v0, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    .line 5224
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 5225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMdn = ruim.getMdn() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5228
    .end local v0    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v1
.end method

.method protected getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3679
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3680
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 3682
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3684
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3685
    return-object v0

    .line 3682
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3684
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method protected getRatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5834
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5836
    .local v0, "mDataType":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5837
    const-string v1, "UMTS"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HSPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HSDPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HSUPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HSPAP"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TD-SCDMA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5839
    :cond_0
    const-string v1, " 3G"

    .line 5843
    :goto_0
    return-object v1

    .line 5840
    :cond_1
    const-string v1, "LTE"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5841
    const-string v1, " 4G"

    goto :goto_0

    .line 5843
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method protected getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4
    .param p1, "family"    # I

    .prologue
    const/4 v1, 0x0

    .line 5204
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 5205
    const-string v2, "GsmSST"

    const-string v3, "mUiccController == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    :cond_0
    :goto_0
    return-object v1

    .line 5209
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 5210
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 5214
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1184
    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1190
    .local v21, "salesCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 1191
    const-string v25, "GsmSST"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received message "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] while being destroyed. Ignoring."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1195
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 1568
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1204
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1206
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_KeepLteIconCsfb"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1208
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setMobileNetworkStatus()V

    .line 1218
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 1220
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 1226
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 1229
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1234
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1235
    const-string v25, "GsmSST"

    const-string v26, "EVENT_RADIO_STATE_CHANGED"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 1242
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 1249
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1253
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1254
    .local v6, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 1257
    :cond_4
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 1259
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 1264
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1266
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-nez v25, :cond_8

    .line 1267
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v23, v25

    check-cast v23, [Ljava/lang/String;

    .line 1268
    .local v23, "states":[Ljava/lang/String;
    const/4 v11, -0x1

    .line 1269
    .local v11, "lac":I
    const/4 v8, -0x1

    .line 1270
    .local v8, "cid":I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 1272
    const/16 v25, 0x1

    :try_start_0
    aget-object v25, v23, v25

    if-eqz v25, :cond_6

    const/16 v25, 0x1

    aget-object v25, v23, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_6

    .line 1273
    const/16 v25, 0x1

    aget-object v25, v23, v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 1275
    :cond_6
    const/16 v25, 0x2

    aget-object v25, v23, v25

    if-eqz v25, :cond_7

    const/16 v25, 0x2

    aget-object v25, v23, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_7

    .line 1276
    const/16 v25, 0x2

    aget-object v25, v23, v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1282
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v8}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1288
    .end local v8    # "cid":I
    .end local v11    # "lac":I
    .end local v23    # "states":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 1278
    .restart local v8    # "cid":I
    .restart local v11    # "lac":I
    .restart local v23    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1279
    .local v10, "ex":Ljava/lang/NumberFormatException;
    const-string v25, "GsmSST"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "error parsing location: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1295
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "cid":I
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v11    # "lac":I
    .end local v23    # "states":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1297
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1303
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1307
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1309
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/Object;

    check-cast v25, [Ljava/lang/Object;

    const/16 v26, 0x0

    aget-object v15, v25, v26

    check-cast v15, Ljava/lang/String;

    .line 1310
    .local v15, "nitzString":Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/Object;

    check-cast v25, [Ljava/lang/Object;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1311
    .local v16, "nitzReceiveTime":J
    const-string v25, "CTC"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1312
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsNitzReceived:Z

    .line 1314
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1321
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "nitzString":Ljava/lang/String;
    .end local v16    # "nitzReceiveTime":J
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1325
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1326
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 1329
    :cond_b
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 1334
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->isUsaCdmaModel()Z

    move-result v25

    if-nez v25, :cond_c

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 1345
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 1346
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 1351
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_ShowRescandialog"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 1353
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isBootCompleted:Z

    .line 1354
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    .line 1358
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const-string v26, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_b
    const-string v25, "EVENT_RUIM_RECORDS_LOADED "

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v26

    const/16 v27, 0x2

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v7

    .line 1377
    .local v7, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v7, :cond_e

    .line 1378
    const-string v25, "cdmaUiccApp is Null. "

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1381
    :cond_e
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    .line 1382
    .local v13, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v13, :cond_0

    move-object/from16 v20, v13

    .line 1383
    check-cast v20, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1384
    .local v20, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v20, :cond_0

    .line 1385
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1386
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1387
    const-string v25, "3"

    const-string v26, "ril.otasp_state"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 1388
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOtaspState()V

    goto/16 :goto_0

    .line 1396
    .end local v7    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v13    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v20    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1398
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    const/16 v26, 0xf

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1404
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1406
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/16 v25, 0x15

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1407
    .local v14, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1411
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "message":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1412
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 1413
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Message;

    invoke-static/range {v25 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v25

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1415
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Message;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1420
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1422
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-nez v25, :cond_f

    .line 1423
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    check-cast v25, [I

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1431
    :goto_2
    const/16 v25, 0x14

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1432
    .restart local v14    # "message":Landroid/os/Message;
    const/16 v24, 0x7

    .line 1434
    .local v24, "toggledNetworkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGlobalModeNetworkType()I

    move-result v24

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1425
    .end local v14    # "message":Landroid/os/Message;
    .end local v24    # "toggledNetworkType":I
    :cond_f
    const/16 v25, 0x7

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGlobalModeNetworkType()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 1441
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v25

    if-nez v25, :cond_10

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v12

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    .line 1447
    .local v12, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v26, 0xc3bb

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v25

    const/16 v28, 0x1

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v25

    :goto_3
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v27, v28

    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1449
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1451
    .end local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_10
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 1447
    .restart local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_11
    const/16 v25, -0x1

    goto :goto_3

    .line 1457
    .end local v12    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_11
    const-string v25, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_EnableDSAC"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1461
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1462
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1468
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string v25, "EVENT_CHANGE_IMS_STATE:"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 1474
    :sswitch_13
    const-string v25, "EVENT_IMS_CAPABILITY_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 1480
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v19, v25

    check-cast v19, [Ljava/lang/String;

    .line 1481
    .local v19, "res":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v18, v19, v25

    .line 1482
    .local v18, "operatorNumeric":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v22, v19, v25

    .line 1483
    .local v22, "savedZoneID":Ljava/lang/String;
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1489
    .end local v18    # "operatorNumeric":Ljava/lang/String;
    .end local v19    # "res":[Ljava/lang/String;
    .end local v22    # "savedZoneID":Ljava/lang/String;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1490
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-nez v25, :cond_12

    .line 1491
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    check-cast v25, [I

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SyncPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 1493
    :cond_12
    const-string v25, "LTE_ROAMING : Failed EVENT_GET_PREF_NETWORK_TYPE_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1499
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    const-string v25, "LTE_ROAMING : Received EVENT_HOME_NETWORK_NOTI"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1500
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notiHomePlmn()V

    goto/16 :goto_0

    .line 1506
    :sswitch_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1509
    .local v9, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v25, "SCREEN_ON"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1511
    .end local v9    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const-string v26, "SCREEN_ON"

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1515
    :sswitch_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1518
    .restart local v9    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v25, "SCREEN_OFF"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1520
    .end local v9    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const-string v26, "SCREEN_OFF"

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1524
    :sswitch_19
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_EMERGENCY_TIMEOUT. Screen["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-boolean v26, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1525
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const-string v26, "LCSAPP_TERMINATED"

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1532
    :sswitch_1a
    const-string v25, "EVENT_LU_REJECT_CAUSE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1536
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dismissDeniedDialog()V

    .line 1537
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 1544
    :sswitch_1b
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 1545
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 1553
    :sswitch_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 1554
    const-string v25, "waiting before radio turn off"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1555
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1557
    .restart local v9    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 1563
    .end local v9    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_1d
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    goto/16 :goto_0

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_c
        0x13 -> :sswitch_f
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x1b -> :sswitch_b
        0x2d -> :sswitch_12
        0x30 -> :sswitch_13
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_14
        0x6a -> :sswitch_15
        0x6c -> :sswitch_16
        0x6d -> :sswitch_1d
        0x79 -> :sswitch_17
        0x7a -> :sswitch_18
        0x7b -> :sswitch_19
        0xfa0 -> :sswitch_1b
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 38
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v32

    .line 2315
    .local v32, "subId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    .line 2318
    const/4 v9, 0x0

    .line 2320
    .local v9, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 2321
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/CommandException;

    check-cast v34, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    .line 2324
    :cond_2
    sget-object v34, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v34

    if-ne v9, v0, :cond_3

    .line 2326
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 2330
    :cond_3
    sget-object v34, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v34

    if-eq v9, v0, :cond_4

    .line 2331
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2693
    .end local v9    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v36, v34, v35

    add-int/lit8 v36, v36, -0x1

    aput v36, v34, v35

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v34, v34, v35

    if-nez v34, :cond_0

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRoamingState()V

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2698
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 2335
    :cond_5
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2337
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [Ljava/lang/String;

    move-object/from16 v0, v34

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 2338
    .local v31, "states":[Ljava/lang/String;
    const/4 v15, -0x1

    .line 2339
    .local v15, "lac":I
    const/4 v5, -0x1

    .line 2340
    .local v5, "cid":I
    const/16 v33, 0x0

    .line 2341
    .local v33, "type":I
    const/16 v25, 0x4

    .line 2342
    .local v25, "regState":I
    const/16 v24, -0x1

    .line 2343
    .local v24, "reasonRegStateDenied":I
    const/16 v23, -0x1

    .line 2345
    .local v23, "psc":I
    const/16 v17, 0x0

    .line 2346
    .local v17, "lteImsVoiceAvail":I
    const/16 v18, 0x0

    .line 2347
    .local v18, "lteIsEbSupported":I
    const/16 v19, 0x0

    .line 2349
    .local v19, "lteIsEmergencyAccessBarred":I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v34, :cond_d

    .line 2351
    const/16 v34, 0x0

    :try_start_1
    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2352
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_8

    .line 2353
    const/16 v34, 0x1

    aget-object v34, v31, v34

    if-eqz v34, :cond_6

    const/16 v34, 0x1

    aget-object v34, v31, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_6

    .line 2354
    const/16 v34, 0x1

    aget-object v34, v31, v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 2356
    :cond_6
    const/16 v34, 0x2

    aget-object v34, v31, v34

    if-eqz v34, :cond_7

    const/16 v34, 0x2

    aget-object v34, v31, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_7

    .line 2357
    const/16 v34, 0x2

    aget-object v34, v31, v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 2361
    :cond_7
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_8

    const/16 v34, 0x3

    aget-object v34, v31, v34

    if-eqz v34, :cond_8

    .line 2362
    const/16 v34, 0x3

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2365
    :cond_8
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0xe

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_c

    .line 2366
    const/16 v34, 0xe

    aget-object v34, v31, v34

    if-eqz v34, :cond_9

    const/16 v34, 0xe

    aget-object v34, v31, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_9

    .line 2367
    const/16 v34, 0xe

    aget-object v34, v31, v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    .line 2370
    :cond_9
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x12

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_c

    .line 2371
    const/16 v34, 0xf

    aget-object v34, v31, v34

    if-eqz v34, :cond_a

    .line 2372
    const/16 v34, 0xf

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2374
    :cond_a
    const/16 v34, 0x10

    aget-object v34, v31, v34

    if-eqz v34, :cond_b

    .line 2375
    const/16 v34, 0x10

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2377
    :cond_b
    const/16 v34, 0x11

    aget-object v34, v31, v34

    if-eqz v34, :cond_c

    .line 2378
    const/16 v34, 0x11

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2384
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 2386
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0xd

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_12

    .line 2387
    const/16 v34, 0xd

    aget-object v34, v31, v34

    if-eqz v34, :cond_d

    const/16 v34, 0xd

    aget-object v34, v31, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_d

    .line 2388
    const/16 v34, 0xd

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2399
    :cond_d
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 2402
    const-string v34, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 2403
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegistrationState:I

    .line 2406
    :cond_e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v34, v0

    if-nez v34, :cond_13

    .line 2407
    const-string v34, "Change service state to STATE_POWER_OFF becuase EPDG deregi."

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2412
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setLteImsVoiceAvail(I)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setLteIsEbSupported(I)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setLteIsEmergencyAccessBarred(I)V

    .line 2420
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 2422
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRegState:I

    .line 2423
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "handlePollStateResult(); regState: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", mNewLuRejCause: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2426
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x112005c

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 2428
    .local v14, "isVoiceCapable":Z
    const/16 v34, 0xd

    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0xa

    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0xc

    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    const/16 v34, 0xe

    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    .line 2440
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 2442
    const-string v34, "ril.data.limited_lte_reject"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2444
    .local v16, "limitedbyLteReject":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "limitedbyLteReject="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2445
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_15

    const-string v34, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 2446
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 2457
    .end local v16    # "limitedbyLteReject":Ljava/lang/String;
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2689
    .end local v5    # "cid":I
    .end local v14    # "isVoiceCapable":Z
    .end local v15    # "lac":I
    .end local v17    # "lteImsVoiceAvail":I
    .end local v18    # "lteIsEbSupported":I
    .end local v19    # "lteIsEmergencyAccessBarred":I
    .end local v23    # "psc":I
    .end local v24    # "reasonRegStateDenied":I
    .end local v25    # "regState":I
    .end local v31    # "states":[Ljava/lang/String;
    .end local v33    # "type":I
    :catch_0
    move-exception v10

    .line 2690
    .local v10, "ex":Ljava/lang/RuntimeException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2391
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "cid":I
    .restart local v15    # "lac":I
    .restart local v17    # "lteImsVoiceAvail":I
    .restart local v18    # "lteIsEbSupported":I
    .restart local v19    # "lteIsEmergencyAccessBarred":I
    .restart local v23    # "psc":I
    .restart local v24    # "reasonRegStateDenied":I
    .restart local v25    # "regState":I
    .restart local v31    # "states":[Ljava/lang/String;
    .restart local v33    # "type":I
    :cond_12
    const/16 v34, -0x1

    :try_start_3
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2394
    :catch_1
    move-exception v10

    .line 2395
    .local v10, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "error parsing RegistrationState: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2410
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setState(I)V

    goto/16 :goto_3

    .line 2428
    .restart local v14    # "isVoiceCapable":Z
    :cond_14
    if-eqz v14, :cond_10

    .line 2435
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 2436
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_EnableDSAC"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 2437
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_4

    .line 2448
    .restart local v16    # "limitedbyLteReject":Ljava/lang/String;
    :cond_15
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_4

    .line 2451
    .end local v16    # "limitedbyLteReject":Ljava/lang/String;
    :cond_16
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_4

    .line 2463
    .end local v5    # "cid":I
    .end local v14    # "isVoiceCapable":Z
    .end local v15    # "lac":I
    .end local v17    # "lteImsVoiceAvail":I
    .end local v18    # "lteIsEbSupported":I
    .end local v19    # "lteIsEmergencyAccessBarred":I
    .end local v23    # "psc":I
    .end local v24    # "reasonRegStateDenied":I
    .end local v25    # "regState":I
    .end local v31    # "states":[Ljava/lang/String;
    .end local v33    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [Ljava/lang/String;

    move-object/from16 v0, v34

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 2465
    .restart local v31    # "states":[Ljava/lang/String;
    const/16 v33, 0x0

    .line 2466
    .restart local v33    # "type":I
    const/16 v25, 0x4

    .line 2467
    .restart local v25    # "regState":I
    const/16 v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2468
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2470
    const/4 v4, -0x1

    .line 2472
    .local v4, "cellId":I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v34, :cond_1c

    .line 2474
    const/16 v34, 0x0

    :try_start_5
    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2478
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_17

    const/16 v34, 0x2

    aget-object v34, v31, v34

    if-eqz v34, :cond_17

    .line 2479
    const/16 v34, 0x2

    aget-object v34, v31, v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2483
    :cond_17
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_18

    const/16 v34, 0x3

    aget-object v34, v31, v34

    if-eqz v34, :cond_18

    .line 2484
    const/16 v34, 0x3

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2486
    :cond_18
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_19

    const/16 v34, 0x3

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    .line 2488
    const/16 v34, 0x4

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2490
    :cond_19
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x6

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1a

    .line 2491
    const/16 v34, 0x5

    aget-object v34, v31, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2493
    :cond_1a
    const-string v34, "TCE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 2494
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x7

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1b

    const/16 v34, 0x6

    aget-object v34, v31, v34

    if-eqz v34, :cond_1b

    .line 2495
    const/16 v34, 0x6

    aget-object v34, v31, v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    .line 2496
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "TCE rac "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2500
    :cond_1b
    const/16 v34, 0x64

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_1e

    .line 2501
    add-int/lit8 v33, v33, -0x64

    .line 2502
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    .line 2507
    :goto_5
    const-string v34, "DC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_RIL_ConfigNetworkStatusIcon"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    const/16 v34, 0x1e

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    .line 2509
    const-string v34, "Data type DC -> HSPAP, and set optional value"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2510
    const/16 v33, 0xf

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2524
    :cond_1c
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v6

    .line 2525
    .local v6, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2526
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2529
    const-string v34, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v4, v0, :cond_1d

    .line 2530
    shr-int/lit8 v8, v4, 0x8

    .line 2531
    .local v8, "eNbId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v34

    const/16 v35, 0xe

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1d

    const v34, 0xfa000

    move/from16 v0, v34

    if-lt v8, v0, :cond_1d

    const v34, 0xfffff

    move/from16 v0, v34

    if-gt v8, v0, :cond_1d

    .line 2533
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "LTE Femtocell - eNB ID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setFemtocellIndicator(I)V

    .line 2539
    .end local v8    # "eNbId":I
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v34, v0

    if-eqz v34, :cond_21

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.ispsroaming"

    const-string v36, "true"

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2547
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " regState="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dataRadioTechnology="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 2504
    .end local v6    # "dataRegState":I
    :cond_1e
    const/16 v34, 0x0

    :try_start_7
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 2520
    :catch_2
    move-exception v10

    .line 2521
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_6

    .line 2512
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_1f
    :try_start_9
    const-string v34, "TDLTE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_RIL_ConfigNetworkStatusIcon"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    const/16 v34, 0x1f

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    .line 2514
    const-string v34, "Data type TDLTE -> LTE, and set optional value"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2515
    const/16 v33, 0xe

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V

    goto/16 :goto_6

    .line 2518
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/telephony/ServiceState;->setOptionalRadioTech(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_6

    .line 2542
    .restart local v6    # "dataRegState":I
    :cond_21
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const-string v35, "gsm.operator.ispsroaming"

    const-string v36, "false"

    invoke-virtual/range {v34 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2555
    .end local v4    # "cellId":I
    .end local v6    # "dataRegState":I
    .end local v25    # "regState":I
    .end local v31    # "states":[Ljava/lang/String;
    .end local v33    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [Ljava/lang/String;

    move-object/from16 v0, v34

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2557
    .local v22, "opNames":[Ljava/lang/String;
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    .line 2559
    const/16 v34, 0x2

    aget-object v34, v22, v34
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v34, :cond_22

    .line 2561
    const/16 v34, 0x2

    :try_start_b
    aget-object v34, v22, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 2569
    :cond_22
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->supportsGlobalModeForUsaCdma()Z

    move-result v34

    if-eqz v34, :cond_24

    .line 2570
    const/16 v34, 0x2

    aget-object v34, v22, v34

    if-eqz v34, :cond_23

    const/16 v34, 0x2

    aget-object v34, v22, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_23

    const-string v34, "00000"

    const/16 v35, 0x2

    aget-object v35, v22, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 2571
    :cond_23
    const/16 v34, 0x2

    sget-object v35, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v36, "00000"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v22, v34

    .line 2573
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RIL_REQUEST_OPERATOR.response[2], the numeric, is bad. Using SystemProperties \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sget-object v35, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\'= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x2

    aget-object v35, v22, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2579
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v34

    if-eqz v34, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v3

    .line 2581
    .local v3, "brandOverride":Ljava/lang/String;
    :goto_9
    if-eqz v3, :cond_26

    .line 2582
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget-object v35, v22, v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v3, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2562
    .end local v3    # "brandOverride":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 2563
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Wrong mcc/mnc: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x2

    aget-object v35, v22, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ". Use old MCC/MNC: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2564
    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v22, v34

    goto/16 :goto_8

    .line 2579
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_25
    const/4 v3, 0x0

    goto :goto_9

    .line 2585
    .restart local v3    # "brandOverride":Ljava/lang/String;
    :cond_26
    const-string v34, "gsm.sim.operator.numeric"

    const-string v35, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2586
    .local v27, "sim_numeric":Ljava/lang/String;
    const-string v34, "gsm.sim.operator.alpha"

    const-string v35, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2587
    .local v30, "spn":Ljava/lang/String;
    const/16 v34, 0x2

    aget-object v34, v22, v34

    if-eqz v34, :cond_29

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45400"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_27

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45402"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_27

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45410"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_27

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45418"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_27

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45416"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_27

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "45419"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 2589
    :cond_27
    if-eqz v27, :cond_29

    const-string v34, "45400"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_28

    const-string v34, "45402"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_28

    const-string v34, "45410"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_28

    const-string v34, "45418"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_28

    const-string v34, "45416"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_28

    const-string v34, "45419"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 2591
    :cond_28
    const-string v34, "[CSL PCCW-HKT] CSL PCCW-HKT Network, SPN should be displayed instead of PLMN"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2592
    if-eqz v30, :cond_29

    .line 2593
    const/16 v34, 0x0

    aput-object v30, v22, v34

    .line 2594
    const/16 v34, 0x1

    const/16 v35, 0x0

    aget-object v35, v22, v35

    aput-object v35, v22, v34

    .line 2599
    :cond_29
    const/16 v34, 0x2

    aget-object v34, v22, v34

    if-eqz v34, :cond_2a

    const/16 v34, 0x2

    aget-object v34, v22, v34

    const-string v35, "46697"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2a

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v12

    .line 2601
    .local v12, "iccid":Ljava/lang/String;
    if-eqz v12, :cond_2a

    const-string v34, "8988605"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2a

    .line 2602
    const-string v34, "[APT TWM] APT USE TWM Network, SPN should be displayed instead of PLMN"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2603
    if-eqz v30, :cond_2a

    .line 2604
    const/16 v34, 0x0

    aput-object v30, v22, v34

    .line 2605
    const/16 v34, 0x1

    const/16 v35, 0x0

    aget-object v35, v22, v35

    aput-object v35, v22, v34

    .line 2609
    .end local v12    # "iccid":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v35, v22, v35

    const/16 v36, 0x1

    aget-object v36, v22, v36

    const/16 v37, 0x2

    aget-object v37, v22, v37

    invoke-virtual/range {v34 .. v37}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2616
    .end local v3    # "brandOverride":Ljava/lang/String;
    .end local v22    # "opNames":[Ljava/lang/String;
    .end local v27    # "sim_numeric":Ljava/lang/String;
    .end local v30    # "spn":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [I

    move-object/from16 v0, v34

    check-cast v0, [I

    move-object v13, v0

    .line 2621
    .local v13, "ints":[I
    const-string v34, "SKT"

    const-string v35, "EUR"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2b

    const-string v34, "KTT"

    const-string v35, "EUR"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2b

    const-string v34, "LGT"

    const-string v35, "EUR"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2b

    const-string v34, "KOO"

    const-string v35, "EUR"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_35

    .line 2625
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    const/16 v34, 0x0

    aget v34, v13, v34

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-eq v0, v1, :cond_2c

    const/16 v34, 0x0

    aget v34, v13, v34

    const/16 v36, 0x3

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_34

    :cond_2c
    const/16 v34, 0x1

    :goto_a
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2629
    :goto_b
    const/16 v34, 0x0

    aget v34, v13, v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v34

    if-nez v34, :cond_2d

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2636
    const-string v34, " Forcing Automatic Network Selection, manual selection is not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2640
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_30

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v34

    if-eqz v34, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v34, v0

    if-nez v34, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v34, v0

    if-nez v34, :cond_30

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v34

    const-string v35, "ril.ICC_TYPE"

    const-string v36, "1"

    invoke-static/range {v34 .. v36}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2645
    .local v11, "iccType":Ljava/lang/String;
    const-string v34, "3"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_2f

    const-string v34, "4"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_30

    .line 2646
    :cond_2f
    const-string v34, "Manual Selection with CTC card"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-interface/range {v34 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2653
    .end local v11    # "iccType":Ljava/lang/String;
    :cond_30
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_RIL_NetworkInfoRat"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_32

    .line 2654
    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v34

    if-eqz v34, :cond_32

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 2656
    .local v29, "sp1":Landroid/content/SharedPreferences;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2658
    .local v20, "network_selection_key":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_name_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2660
    .local v21, "network_selection_name_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v34

    if-nez v34, :cond_32

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_31

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_32

    .line 2661
    :cond_31
    const-string v34, "update manual selection mode to auto."

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 2663
    .local v28, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 2664
    .local v7, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2665
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_name_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2666
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2670
    .end local v7    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "network_selection_key":Ljava/lang/String;
    .end local v21    # "network_selection_name_key":Ljava/lang/String;
    .end local v28    # "sp":Landroid/content/SharedPreferences;
    .end local v29    # "sp1":Landroid/content/SharedPreferences;
    :cond_32
    const-string v34, "ro.csc.sales_code"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2671
    .local v26, "salesCode":Ljava/lang/String;
    const-string v34, "Combination"

    const-string v35, "Strawberry"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    const-string v34, "TGY"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 2673
    .restart local v29    # "sp1":Landroid/content/SharedPreferences;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2675
    .restart local v20    # "network_selection_key":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_name_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2677
    .restart local v21    # "network_selection_name_key":Ljava/lang/String;
    const/16 v34, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_33

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_4

    .line 2678
    :cond_33
    const-string v34, "update manual selection mode to auto. for CTC sim roaming popup nosvc error in HK network."

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 2680
    .restart local v28    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 2681
    .restart local v7    # "e":Landroid/content/SharedPreferences$Editor;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2682
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "network_selection_name_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2683
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 2625
    .end local v7    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "network_selection_key":Ljava/lang/String;
    .end local v21    # "network_selection_name_key":Ljava/lang/String;
    .end local v26    # "salesCode":Ljava/lang/String;
    .end local v28    # "sp":Landroid/content/SharedPreferences;
    .end local v29    # "sp1":Landroid/content/SharedPreferences;
    :cond_34
    const/16 v34, 0x0

    goto/16 :goto_a

    .line 2627
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    const/16 v34, 0x0

    aget v34, v13, v34

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_36

    const/16 v34, 0x1

    :goto_c
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_b

    :cond_36
    const/16 v34, 0x0

    goto :goto_c

    .line 2335
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1729
    return-void
.end method

.method protected hangupBeforeDeactivePDP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1733
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupBeforeDeactivePDP() : previous pending value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1738
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1739
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1740
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    .line 1742
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterHangup:I

    if-eqz v1, :cond_1

    .line 1745
    const/4 v0, 0x1

    .line 1747
    :cond_1
    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4021
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDtmSupport:I

    if-ne v1, v0, :cond_1

    .line 4022
    const-string v1, "isConcurrentVoiceAndDataAllowed : network support DTM, return true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4028
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndDataAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 4039
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4040
    const-string v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4041
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    .line 4052
    :goto_0
    return v1

    .line 4044
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    .line 4045
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 4046
    .local v0, "antennabar":I
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 4048
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 4052
    .end local v0    # "antennabar":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    goto :goto_0
.end method

.method protected isFakeHomeOn(Landroid/telephony/ServiceState;)Z
    .locals 10
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 5916
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v7, :cond_1

    .line 5930
    :cond_0
    :goto_0
    return v6

    .line 5920
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 5921
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v1

    .line 5922
    .local v1, "fho":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 5923
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 5924
    .local v2, "h":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoamingBetweenOperators - h["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], operatorNumeric["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5925
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5926
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 5923
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected isFakeRoamingOn(Landroid/telephony/ServiceState;)Z
    .locals 10
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 5937
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v7, :cond_1

    .line 5951
    :cond_0
    :goto_0
    return v6

    .line 5941
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 5942
    .local v4, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    .line 5943
    .local v1, "fro":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 5944
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 5945
    .local v5, "r":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFakeRoamingBetweenOperators - r["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], operatorNumeric["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5946
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5947
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 5944
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    .line 3671
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4736
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4741
    const-string v0, "GsmSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    return-void
.end method

.method public needBlockData()Z
    .locals 3

    .prologue
    .line 3994
    const/4 v0, 0x0

    .line 3995
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needBlockData(): mScreenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needMobileDataBlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->needMobileDataBlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4000
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->needMobileDataBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z

    if-nez v1, :cond_0

    .line 4001
    const/4 v0, 0x1

    .line 4005
    :cond_0
    const-string v1, "SBM"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4007
    const/4 v0, 0x1

    .line 4009
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needBlockData(): result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4010
    return v0
.end method

.method public needToRunLteRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5188
    const-string v2, "ril.simtype"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5190
    .local v0, "simType":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KTT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5199
    :cond_2
    :goto_0
    return v1

    .line 5194
    :cond_3
    const-string v2, "KOO"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5199
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    .prologue
    .line 4860
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4861
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4608
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRuimLoadedEvent()V

    .line 4610
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 4645
    :cond_0
    :goto_0
    return-void

    .line 4614
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4616
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 4617
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 4618
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4619
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 4620
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 4621
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4624
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    .line 4625
    const-string v1, "IsSIMLoadDone set to false"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4628
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4629
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4630
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMin:Ljava/lang/String;

    .line 4631
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 4632
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentOtaspMode:I

    .line 4633
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 4635
    :cond_3
    if-eqz v0, :cond_0

    .line 4636
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4637
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4638
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4639
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4640
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 4641
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2897
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    .line 2898
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aput v4, v1, v4

    .line 2900
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$13;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2941
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2942
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2946
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2947
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 2951
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2952
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2956
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2957
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2962
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2963
    return-void

    .line 2902
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2903
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2904
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2905
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2906
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2907
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 2911
    :pswitch_1
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "operatorSim":Ljava/lang/String;
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

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "28601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2915
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v2, :cond_1

    .line 2916
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2917
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2920
    :cond_1
    const-string v1, "EPDG requires polling state when WiFi connected even in RADIO_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2923
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2924
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2925
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2926
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2927
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2928
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2930
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 2900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 68

    .prologue
    .line 2966
    const-string v63, "ro.csc.sales_code"

    invoke-static/range {v63 .. v63}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2968
    .local v48, "salesCode":Ljava/lang/String;
    sget-boolean v63, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v63, :cond_0

    const-string v63, "telephony.test.forceRoaming"

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    if-eqz v63, :cond_0

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2972
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 2975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1

    .line 2976
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 2981
    :cond_1
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "] newSS=["

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "]"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " oldMaxDataCalls="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " mNewMaxDataCalls="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " oldReasonDataDenied="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " mNewReasonDataDenied="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-nez v63, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    const/16 v64, 0xe

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_41

    .line 2993
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setLteImsVoiceAvail(I)V

    .line 3000
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    .line 3003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-eqz v63, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-nez v63, :cond_42

    const/16 v27, 0x1

    .line 3017
    .local v27, "hasRegistered":Z
    :goto_1
    const-string v63, "SKT"

    const-string v64, "EUR"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 3018
    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    const-string v63, "450"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x0

    const/16 v66, 0x3

    invoke-virtual/range {v64 .. v66}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 3021
    const-string v63, "networkSelectAuto in SKT HOME"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 3026
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-nez v63, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-eqz v63, :cond_43

    const/16 v21, 0x1

    .line 3030
    .local v21, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-eqz v63, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-nez v63, :cond_44

    const/16 v22, 0x1

    .line 3034
    .local v22, "hasGprsAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-nez v63, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-eqz v63, :cond_45

    const/16 v23, 0x1

    .line 3038
    .local v23, "hasGprsDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_46

    const/16 v18, 0x1

    .line 3041
    .local v18, "hasDataRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_47

    const/16 v30, 0x1

    .line 3044
    .local v30, "hasVoiceRegStateChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_48

    const/16 v29, 0x1

    .line 3047
    .local v29, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_49

    const/16 v28, 0x1

    .line 3050
    .local v28, "hasRilDataRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4a

    const-string v63, "DC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v64

    const-string v65, "CscFeature_RIL_ConfigNetworkStatusIcon"

    invoke-virtual/range {v64 .. v65}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_4a

    const/16 v26, 0x1

    .line 3053
    .local v26, "hasOptionalRadioTechChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldDataRadioTech:I

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newDataRadioTech:I

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_4b

    const/16 v17, 0x1

    .line 3059
    .local v17, "hasChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-nez v63, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-eqz v63, :cond_4c

    const/16 v32, 0x1

    .line 3061
    .local v32, "hasVoiceRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-eqz v63, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-nez v63, :cond_4d

    const/16 v31, 0x1

    .line 3063
    .local v31, "hasVoiceRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-nez v63, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-eqz v63, :cond_4e

    const/16 v20, 0x1

    .line 3065
    .local v20, "hasDataRoamingOn":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-eqz v63, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-nez v63, :cond_4f

    const/16 v19, 0x1

    .line 3067
    .local v19, "hasDataRoamingOff":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_50

    const/16 v25, 0x1

    .line 3068
    .local v25, "hasLocationChanged":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "phone"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/telephony/TelephonyManager;

    .line 3071
    .local v55, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_51

    const/16 v24, 0x1

    .line 3076
    .local v24, "hasLimited":Z
    :goto_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_7

    .line 3078
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_52

    :cond_4
    const/16 v17, 0x1

    .line 3079
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    .line 3080
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5

    .line 3081
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 3084
    :cond_5
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_53

    :cond_6
    const/16 v17, 0x1

    .line 3085
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 3090
    :cond_7
    if-nez v30, :cond_8

    if-eqz v18, :cond_9

    .line 3091
    :cond_8
    const v63, 0xc3c2

    const/16 v64, 0x4

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    const/16 v65, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    const/16 v65, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    const/16 v65, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    invoke-static/range {v63 .. v64}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3097
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_a

    .line 3099
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 3100
    const/16 v63, 0xfa0

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v63

    const-wide/16 v64, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3103
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-nez v63, :cond_b

    .line 3105
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 3110
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_d

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-eqz v63, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-nez v63, :cond_d

    .line 3114
    :cond_c
    const-string v63, "ril.data.limited_lte_reject"

    const-string v64, "false"

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 3123
    :cond_d
    if-eqz v29, :cond_f

    .line 3124
    const/4 v10, -0x1

    .line 3125
    .local v10, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v39, v0

    .line 3126
    .local v39, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v39, :cond_e

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    .line 3131
    :cond_e
    const v63, 0xc3cb

    const/16 v64, 0x3

    move/from16 v0, v64

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    const/16 v65, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    const/16 v65, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    aput-object v66, v64, v65

    invoke-static/range {v63 .. v64}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3135
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "RAT switched "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    invoke-static/range {v64 .. v64}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " -> "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    invoke-static/range {v64 .. v64}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " at cell "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3144
    .end local v10    # "cid":I
    .end local v39    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v56, v0

    .line 3145
    .local v56, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3146
    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v53, v0

    .line 3152
    .local v53, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 3153
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 3155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 3156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 3159
    sget-boolean v43, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    .line 3160
    .local v43, "oldWFCRegStatus":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWfcRegistered()Z

    move-result v63

    sput-boolean v63, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    .line 3161
    if-eqz v43, :cond_54

    sget-boolean v63, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-nez v63, :cond_54

    const/16 v35, 0x1

    .line 3164
    .local v35, "isWFCDeregistered":Z
    :goto_13
    if-eqz v29, :cond_10

    .line 3165
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 3166
    const-string v63, "CTC"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_10

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const-string v64, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v65

    invoke-static/range {v65 .. v65}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    :cond_10
    if-eqz v28, :cond_11

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    move-object/from16 v0, v55

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 3175
    const/16 v63, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_11

    .line 3177
    const-string v63, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3181
    :cond_11
    if-eqz v27, :cond_13

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3185
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " changing to false"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3188
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 3191
    const-string v63, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_12

    const-string v63, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_12

    .line 3193
    const-string v63, "has Registerd without operator name -> should poll again"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 3199
    :cond_12
    const-string v63, "LGT"

    const-string v64, "EUR"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_13

    .line 3200
    const-string v63, "1"

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 3201
    const-string v63, "1"

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 3202
    const-string v63, "0"

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWipiNetValInit:Ljava/lang/String;

    .line 3208
    :cond_13
    const-string v63, "LGT"

    const-string v64, "EUR"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_14

    if-eqz v21, :cond_14

    .line 3209
    const-string v63, "0"

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    .line 3210
    const-string v63, "0"

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    .line 3215
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_ShowRescandialog"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_1a

    .line 3217
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "hasChanged : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", NetworkStateChangedByRescanDialog : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", isFirstRescanDialogCheckAfterBoot : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3219
    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v63, v0

    if-nez v63, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1a

    .line 3220
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static/range {v63 .. v64}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3221
    .local v6, "SelectionMode":Ljava/lang/String;
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "SelectionMode : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", isBootCompleted : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isBootCompleted:Z

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3223
    const-string v63, "1"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_55

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isBootCompleted:Z

    move/from16 v63, v0

    if-eqz v63, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-eqz v63, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_55

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    move/from16 v63, v0

    if-nez v63, :cond_55

    .line 3225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    move-object/from16 v63, v0

    if-nez v63, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v63, v0

    if-eqz v63, :cond_18

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    const-string v64, "activity"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager;

    .line 3227
    .local v40, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v63, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v47

    .line 3228
    .local v47, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v41, 0x0

    .line 3229
    .local v41, "mTopActivity":Ljava/lang/String;
    if-eqz v47, :cond_16

    const/16 v63, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-eqz v63, :cond_16

    .line 3230
    const/16 v63, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v41

    .line 3232
    :cond_16
    if-nez v41, :cond_17

    .line 3233
    const-string v41, "NULL"

    .line 3236
    :cond_17
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "mTopActivity : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3237
    const-string v63, "com.android.phone/com.android.phone.NetworkSetting"

    move-object/from16 v0, v41

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_18

    .line 3238
    const-string v63, "ss.showRescanDialog()"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3239
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showRescanDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3250
    .end local v40    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v41    # "mTopActivity":Ljava/lang/String;
    .end local v47    # "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_18
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v63, v0

    if-eqz v63, :cond_19

    .line 3251
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    .line 3253
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1a

    .line 3254
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    .line 3260
    .end local v6    # "SelectionMode":Ljava/lang/String;
    :cond_1a
    const-string v63, "CTC"

    const-string v64, "ro.csc.sales_code"

    invoke-static/range {v64 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_1b

    .line 3326
    :cond_1b
    if-eqz v17, :cond_2f

    .line 3327
    const-string v63, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v64, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_21

    .line 3328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v14

    .line 3329
    .local v14, "displayname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    const/16 v64, 0xe

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-nez v63, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v63

    const/16 v64, 0xe

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-eqz v63, :cond_56

    :cond_1d
    const/16 v63, 0x1

    :goto_15
    invoke-static/range {v63 .. v63}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 3332
    .local v33, "isLteRoam":Ljava/lang/Boolean;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v63

    if-eqz v63, :cond_1f

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v64

    const/16 v65, 0x1

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v51

    .line 3334
    .local v51, "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v51, :cond_1f

    .line 3335
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v50

    check-cast v50, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 3336
    .local v50, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    .line 3338
    .local v46, "realOperatorNumeric":Ljava/lang/String;
    if-eqz v50, :cond_1e

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1e

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1e

    .line 3339
    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v46

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    .line 3340
    const-string v63, "GsmSST"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Eons Name = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_1e
    if-nez v14, :cond_1f

    .line 3343
    const-string v14, "Roam"

    .line 3344
    const-string v63, "GsmSST"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "EONS is null,so display = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    .end local v46    # "realOperatorNumeric":Ljava/lang/String;
    .end local v50    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    .end local v51    # "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v63, v0

    const/16 v63, 0x6

    invoke-static/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getNtcFeature(I)Z

    move-result v63

    if-eqz v63, :cond_20

    const-string v63, "Chameleon"

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_20

    .line 3349
    const-string v14, "Samsung"

    .line 3351
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3354
    .end local v14    # "displayname":Ljava/lang/String;
    .end local v33    # "isLteRoam":Ljava/lang/Boolean;
    :cond_21
    const-string v63, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v64, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_23

    const-string v63, "TFN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v64, v0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_23

    .line 3355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getState()I

    move-result v63

    if-nez v63, :cond_23

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-nez v63, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-eqz v63, :cond_57

    .line 3357
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    const-string v64, "Roaming"

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3370
    :cond_23
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3373
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 3380
    const-string v63, "CHM"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    const-string v63, "TGY"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    const-string v63, "BRI"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    const-string v63, "CHU"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    const-string v63, "CHC"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    const-string v63, "CTC"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_24

    .line 3382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    move/from16 v63, v0

    if-eqz v63, :cond_58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    move/from16 v63, v0

    if-eqz v63, :cond_58

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " | "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3391
    :cond_24
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, v55

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v45

    .line 3392
    .local v45, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v44

    .line 3393
    .local v44, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3399
    if-eqz v44, :cond_27

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v63

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_27

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_25

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    move/from16 v63, v0

    if-nez v63, :cond_27

    .line 3403
    :cond_26
    const/16 v63, 0x1

    const/16 v64, 0x0

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v63

    move/from16 v3, v64

    move-object/from16 v4, v65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 3407
    :cond_27
    if-nez v44, :cond_59

    .line 3408
    const-string v63, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    const-string v64, ""

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 3410
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 3411
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 3526
    :cond_28
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v63

    if-nez v63, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v63

    if-eqz v63, :cond_64

    :cond_29
    const/16 v63, 0x1

    :goto_19
    move-object/from16 v0, v55

    move/from16 v1, v64

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3530
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Broadcasting ServiceState : "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3532
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_2a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_2b

    .line 3535
    :cond_2a
    const-string v52, "false"

    .line 3536
    .local v52, "sixmodeslave":Ljava/lang/String;
    const-string v63, "false"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v64, v0

    const-string v65, "gsm.operator.isroaming"

    const-string v66, "false"

    invoke-virtual/range {v64 .. v66}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2b

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "IS_CTC"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 3538
    .local v36, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "IS_CTC2"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 3539
    .local v37, "isctc2":I
    const/16 v63, 0x1

    move/from16 v0, v36

    move/from16 v1, v63

    if-ne v0, v1, :cond_2b

    const/16 v63, 0x1

    move/from16 v0, v37

    move/from16 v1, v63

    if-ne v0, v1, :cond_2b

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const-string v64, "persist.radio.multisim.stackid"

    const-string v65, "-1"

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_2b

    .line 3541
    const-string v63, "true"

    .line 3549
    .end local v36    # "isctc":I
    .end local v37    # "isctc2":I
    .end local v52    # "sixmodeslave":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v49

    .line 3550
    .local v49, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const-string v64, "ril.servicestate"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3554
    const-string v63, "CTC"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2c

    .line 3555
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setChinaMainlandProperty()V

    .line 3556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getState()I

    move-result v64

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->displayTimeZoneRecommend(Ljava/lang/String;I)V

    .line 3559
    :cond_2c
    const-string v63, "CTC"

    const-string v64, "ro.csc.sales_code"

    invoke-static/range {v64 .. v64}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2d

    .line 3562
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "BRI"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "TGY"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "CWT"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "FET"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "TWM"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2e

    const-string v63, "CHZ"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2f

    .line 3565
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-nez v63, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-eqz v63, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v63

    if-eqz v63, :cond_2f

    .line 3568
    const-string v63, "Need to pollState to update Voice Network Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 3575
    .end local v44    # "operatorNumeric":Ljava/lang/String;
    .end local v45    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v49    # "serviceStateForProperty":I
    :cond_2f
    const-string v63, "INU"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_30

    const-string v63, "INS"

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_65

    :cond_30
    const/16 v34, 0x1

    .line 3577
    .local v34, "isRJIL":Z
    :goto_1a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v65, ""

    invoke-virtual/range {v63 .. v65}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v63

    const-string v64, "WFC20"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_31

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_32

    :cond_31
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_33

    if-eqz v34, :cond_33

    sget-boolean v63, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-nez v63, :cond_32

    if-eqz v35, :cond_33

    .line 3583
    :cond_32
    const-string v63, "PLMN string update when EPDG regi"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 3585
    sget-boolean v63, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcPrefMode:B

    move/from16 v63, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_33

    .line 3587
    const-string v63, "No Svc during ePDG, set default Signal stregnth "

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3588
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 3589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    .line 3593
    :cond_33
    if-eqz v22, :cond_34

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3596
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->isVolteRegistered()Z

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_34

    .line 3598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 3602
    :cond_34
    if-eqz v23, :cond_35

    .line 3603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3606
    :cond_35
    if-nez v18, :cond_36

    if-nez v28, :cond_36

    if-eqz v26, :cond_37

    .line 3607
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const-string v64, "nwTypeChanged"

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 3609
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v63 .. v64}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_37

    .line 3610
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v63

    const-string v64, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v65, ""

    invoke-virtual/range {v63 .. v65}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v63

    const-string v64, "WFC20"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_37

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 3612
    .local v11, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v57

    .line 3613
    .local v57, "types":[Ljava/lang/String;
    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v63, v0

    if-nez v63, :cond_37

    .line 3614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    const-string v64, "nwTypeChanged"

    const-string v65, "default"

    invoke-virtual/range {v63 .. v65}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v57    # "types":[Ljava/lang/String;
    :cond_37
    if-eqz v32, :cond_38

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3624
    :cond_38
    if-eqz v31, :cond_39

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3628
    :cond_39
    if-eqz v20, :cond_3a

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3632
    :cond_3a
    if-eqz v19, :cond_3b

    .line 3633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3636
    :cond_3b
    if-eqz v25, :cond_3c

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 3639
    :cond_3c
    const-string v63, "TCE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v64

    const-string v65, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual/range {v64 .. v65}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3f

    .line 3640
    const-string v63, "GsmSST"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "TCE ["

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRac:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, "]"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    if-nez v63, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v63

    if-eqz v63, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    move/from16 v63, v0

    if-eqz v63, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRac:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3f

    .line 3642
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRac:I

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3646
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v63

    if-nez v63, :cond_66

    .line 3647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v63, v0

    if-nez v63, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v63, v0

    if-nez v63, :cond_40

    .line 3648
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string v64, "gprs_register_check_period_ms"

    const v65, 0xea60

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3654
    .local v7, "check_period":I
    const/16 v63, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    int-to-long v0, v7

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3661
    .end local v7    # "check_period":I
    :cond_40
    :goto_1b
    return-void

    .line 2995
    .end local v17    # "hasChanged":Z
    .end local v18    # "hasDataRegStateChanged":Z
    .end local v19    # "hasDataRoamingOff":Z
    .end local v20    # "hasDataRoamingOn":Z
    .end local v21    # "hasDeregistered":Z
    .end local v22    # "hasGprsAttached":Z
    .end local v23    # "hasGprsDetached":Z
    .end local v24    # "hasLimited":Z
    .end local v25    # "hasLocationChanged":Z
    .end local v26    # "hasOptionalRadioTechChanged":Z
    .end local v27    # "hasRegistered":Z
    .end local v28    # "hasRilDataRadioTechnologyChanged":Z
    .end local v29    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v30    # "hasVoiceRegStateChanged":Z
    .end local v31    # "hasVoiceRoamingOff":Z
    .end local v32    # "hasVoiceRoamingOn":Z
    .end local v34    # "isRJIL":Z
    .end local v35    # "isWFCDeregistered":Z
    .end local v43    # "oldWFCRegStatus":Z
    .end local v53    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v55    # "tm":Landroid/telephony/TelephonyManager;
    .end local v56    # "tss":Landroid/telephony/ServiceState;
    :cond_41
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Update LteImsVoiceAvail: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " (DataRegState: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ", DataRadioTechnology: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3003
    :cond_42
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 3026
    .restart local v27    # "hasRegistered":Z
    :cond_43
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 3030
    .restart local v21    # "hasDeregistered":Z
    :cond_44
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 3034
    .restart local v22    # "hasGprsAttached":Z
    :cond_45
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 3038
    .restart local v23    # "hasGprsDetached":Z
    :cond_46
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3041
    .restart local v18    # "hasDataRegStateChanged":Z
    :cond_47
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 3044
    .restart local v30    # "hasVoiceRegStateChanged":Z
    :cond_48
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 3047
    .restart local v29    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_49
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3050
    .restart local v28    # "hasRilDataRadioTechnologyChanged":Z
    :cond_4a
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 3057
    .restart local v26    # "hasOptionalRadioTechChanged":Z
    :cond_4b
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 3059
    .restart local v17    # "hasChanged":Z
    :cond_4c
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 3061
    .restart local v32    # "hasVoiceRoamingOn":Z
    :cond_4d
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 3063
    .restart local v31    # "hasVoiceRoamingOff":Z
    :cond_4e
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 3065
    .restart local v20    # "hasDataRoamingOn":Z
    :cond_4f
    const/16 v19, 0x0

    goto/16 :goto_e

    .line 3067
    .restart local v19    # "hasDataRoamingOff":Z
    :cond_50
    const/16 v25, 0x0

    goto/16 :goto_f

    .line 3071
    .restart local v25    # "hasLocationChanged":Z
    .restart local v55    # "tm":Landroid/telephony/TelephonyManager;
    :cond_51
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 3078
    .restart local v24    # "hasLimited":Z
    :cond_52
    const/16 v17, 0x0

    goto/16 :goto_11

    .line 3084
    :cond_53
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 3161
    .restart local v43    # "oldWFCRegStatus":Z
    .restart local v53    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v56    # "tss":Landroid/telephony/ServiceState;
    :cond_54
    const/16 v35, 0x0

    goto/16 :goto_13

    .line 3242
    .restart local v6    # "SelectionMode":Ljava/lang/String;
    .restart local v35    # "isWFCDeregistered":Z
    :catch_0
    move-exception v15

    .line 3243
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 3245
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v63

    if-nez v63, :cond_18

    .line 3246
    const-string v63, "ss.dismissRescanDialog()"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dismissRescanDialog()V

    goto/16 :goto_14

    .line 3329
    .end local v6    # "SelectionMode":Ljava/lang/String;
    .restart local v14    # "displayname":Ljava/lang/String;
    :cond_56
    const/16 v63, 0x0

    goto/16 :goto_15

    .line 3359
    .end local v14    # "displayname":Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    const-string v64, " "

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 3385
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    move/from16 v63, v0

    if-eqz v63, :cond_24

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 3413
    .restart local v44    # "operatorNumeric":Ljava/lang/String;
    .restart local v45    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_59
    const-string v38, ""

    .line 3414
    .local v38, "iso":Ljava/lang/String;
    const-string v42, ""

    .line 3416
    .local v42, "mcc":Ljava/lang/String;
    const/16 v63, 0x0

    const/16 v64, 0x3

    :try_start_1
    move-object/from16 v0, v44

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 3417
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    invoke-static/range {v63 .. v63}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v38

    .line 3424
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v63

    move-object/from16 v0, v55

    move/from16 v1, v63

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 3425
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 3427
    const/16 v61, 0x0

    .line 3429
    .local v61, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v63, v0

    if-nez v63, :cond_5b

    const-string v63, "000"

    move-object/from16 v0, v42

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_5b

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v63

    if-eqz v63, :cond_5b

    .line 3433
    const-string v63, "telephony.test.ignore.nitz"

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    if-eqz v63, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v64

    const-wide/16 v66, 0x1

    and-long v64, v64, v66

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_5d

    const/16 v54, 0x1

    .line 3437
    .local v54, "testOneUniqueOffsetPath":Z
    :goto_1d
    invoke-static/range {v38 .. v38}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v60

    .line 3438
    .local v60, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v63

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_5a

    if-eqz v54, :cond_5e

    .line 3439
    :cond_5a
    const/16 v63, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    .end local v61    # "zone":Ljava/util/TimeZone;
    check-cast v61, Ljava/util/TimeZone;

    .line 3441
    .restart local v61    # "zone":Ljava/util/TimeZone;
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " with zone.getID="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " testOneUniqueOffsetPath="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3445
    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3456
    .end local v54    # "testOneUniqueOffsetPath":Z
    .end local v60    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_5b
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v64, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move/from16 v4, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v63

    if-eqz v63, :cond_28

    .line 3461
    const-string v63, "persist.sys.timezone"

    invoke-static/range {v63 .. v63}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 3463
    .local v62, "zoneName":Ljava/lang/String;
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "\' mZoneOffset="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " mZoneDst="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " iso-cc=\'"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "\' iso-cc-idx="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    sget-object v64, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3469
    const-string v63, ""

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v63, v0

    if-eqz v63, :cond_5f

    .line 3472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v66, v0

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v64

    move-wide/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v61

    .line 3473
    const-string v63, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3510
    :goto_1f
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3512
    if-eqz v61, :cond_63

    .line 3513
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3514
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v63

    if-eqz v63, :cond_5c

    .line 3515
    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3517
    :cond_5c
    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 3418
    .end local v61    # "zone":Ljava/util/TimeZone;
    .end local v62    # "zoneName":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 3419
    .local v16, "ex":Ljava/lang/NumberFormatException;
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3420
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v16

    .line 3421
    .local v16, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3433
    .end local v16    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v61    # "zone":Ljava/util/TimeZone;
    :cond_5d
    const/16 v54, 0x0

    goto/16 :goto_1d

    .line 3448
    .restart local v54    # "testOneUniqueOffsetPath":Z
    .restart local v60    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_5e
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: there are "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " testOneUniqueOffsetPath="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, "\', do nothing"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 3481
    .end local v54    # "testOneUniqueOffsetPath":Z
    .end local v60    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v62    # "zoneName":Ljava/lang/String;
    :cond_5f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v63, v0

    if-nez v63, :cond_62

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v63, v0

    if-nez v63, :cond_62

    if-eqz v62, :cond_62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v63

    if-lez v63, :cond_62

    sget-object v63, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v63

    if-gez v63, :cond_62

    .line 3484
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v61

    .line 3485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v63, v0

    if-eqz v63, :cond_60

    .line 3488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3489
    .local v12, "ctm":J
    move-object/from16 v0, v61

    invoke-virtual {v0, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v63

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v58, v0

    .line 3491
    .local v58, "tzOffset":J
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: tzOffset="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " ltod="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v63

    if-eqz v63, :cond_61

    .line 3495
    sub-long v8, v12, v58

    .line 3496
    .local v8, "adj":J
    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "pollStateDone: adj ltod="

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3498
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3504
    .end local v8    # "adj":J
    .end local v12    # "ctm":J
    .end local v58    # "tzOffset":J
    :cond_60
    :goto_20
    const-string v63, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 3501
    .restart local v12    # "ctm":J
    .restart local v58    # "tzOffset":J
    :cond_61
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v64, v0

    sub-long v64, v64, v58

    move-wide/from16 v0, v64

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_20

    .line 3506
    .end local v12    # "ctm":J
    .end local v58    # "tzOffset":J
    :cond_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v66, v0

    move/from16 v0, v63

    move/from16 v1, v64

    move-wide/from16 v2, v66

    move-object/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v61

    .line 3507
    const-string v63, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 3519
    :cond_63
    const-string v63, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 3526
    .end local v38    # "iso":Ljava/lang/String;
    .end local v42    # "mcc":Ljava/lang/String;
    .end local v61    # "zone":Ljava/util/TimeZone;
    .end local v62    # "zoneName":Ljava/lang/String;
    :cond_64
    const/16 v63, 0x0

    goto/16 :goto_19

    .line 3575
    .end local v44    # "operatorNumeric":Ljava/lang/String;
    .end local v45    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_65
    const/16 v34, 0x0

    goto/16 :goto_1a

    .line 3658
    .restart local v34    # "isRJIL":Z
    :cond_66
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_1b
.end method

.method protected saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 4418
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 4419
    return-void
.end method

.method protected setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 4457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4458
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 4459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4460
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4461
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4462
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4463
    return-void
.end method

.method protected setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 4436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4437
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4439
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 4440
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4441
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4442
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4443
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4448
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 4843
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 4844
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 4845
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 4847
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4848
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4849
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4850
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 4852
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4857
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 4856
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1577
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDeviceShuttingDown = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDesiredPowerState = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRadioState = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1580
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPowerOffDelayNeed = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1581
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAlarmSwitch = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1584
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v12, "CscFeature_RIL_EnableCallBlock4TDF"

    invoke-virtual {v9, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1586
    :cond_0
    const-string v9, "ril.block4TDF"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1587
    .local v8, "tdfBlock":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TDF Block = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1588
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1590
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v5, "i":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1592
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    .end local v5    # "i":Landroid/content/Intent;
    .end local v8    # "tdfBlock":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1593
    .restart local v8    # "tdfBlock":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1594
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "ActivityNotFoundException : TDFNotifier not installed"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string v12, "/efs/FactoryApp/cblkftdf"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x20

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1605
    :goto_1
    if-eqz v8, :cond_3

    const-string v9, "ON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1607
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.latin.tdfnotifier.action.TDF_ACTION"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    .restart local v5    # "i":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1609
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1613
    .end local v5    # "i":Landroid/content/Intent;
    :goto_2
    const-string v9, "ril.block4TDF"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v11, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1600
    :catch_1
    move-exception v4

    .line 1601
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "OFF"

    .line 1602
    const-string v9, "Cannot open file"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1610
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1611
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "ActivityNotFoundException : TDFNotifier not installed"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1621
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "tdfBlock":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-le v9, v10, :cond_6

    .line 1622
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "airplane_mode_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    move v1, v10

    .line 1624
    .local v1, "bAirplaneMode":Z
    :goto_3
    if-eqz v1, :cond_a

    .line 1625
    if-nez v1, :cond_9

    move v9, v10

    :goto_4
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 1626
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 1633
    :cond_4
    :goto_5
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    .line 1634
    const-string v9, "ro.multisim.simslotcount"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v10, :cond_5

    .line 1636
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-ne v9, v10, :cond_d

    .line 1637
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "phone2_on"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    move v9, v10

    :goto_6
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    .line 1646
    :cond_5
    :goto_7
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    if-eqz v9, :cond_f

    move v9, v10

    :goto_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 1648
    sget-boolean v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerStateToDesired(), mPhone.getSimSlot(): "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " mDesiredPowerState = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " mPhoneOnMode = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " mCi.getRadioState() = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " mCi.getRadioState().isOn() = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " bAirplaneMode= "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1658
    .end local v1    # "bAirplaneMode":Z
    :cond_6
    sget-boolean v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z

    if-eqz v9, :cond_10

    .line 1659
    const-string v9, "[DSDS_TWOCHIP] force radio on cancel"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1660
    sget-boolean v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    if-nez v9, :cond_7

    .line 1661
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v10, "ril.dsds.radio-off"

    const-string v12, "0"

    invoke-virtual {v9, v10, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    :cond_7
    sput-boolean v11, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z

    goto/16 :goto_0

    :cond_8
    move v1, v11

    .line 1622
    goto/16 :goto_3

    .restart local v1    # "bAirplaneMode":Z
    :cond_9
    move v9, v11

    .line 1625
    goto/16 :goto_4

    .line 1627
    :cond_a
    if-nez v1, :cond_4

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreviousAirplanemode:Z

    if-ne v9, v10, :cond_4

    .line 1628
    if-nez v1, :cond_b

    move v9, v10

    :goto_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 1629
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreviousAirplanemode:Z

    goto/16 :goto_5

    :cond_b
    move v9, v11

    .line 1628
    goto :goto_9

    :cond_c
    move v9, v11

    .line 1637
    goto/16 :goto_6

    .line 1640
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "phone1_on"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_e

    move v9, v10

    :goto_a
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneOnMode:Z

    goto/16 :goto_7

    :cond_e
    move v9, v11

    goto :goto_a

    :cond_f
    move v9, v11

    .line 1646
    goto/16 :goto_8

    .line 1668
    .end local v1    # "bAirplaneMode":Z
    :cond_10
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v9, :cond_11

    .line 1669
    const-string v9, "mAlarmSwitch == true"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1670
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1671
    .local v2, "context":Landroid/content/Context;
    const-string v9, "alarm"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1672
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1673
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1676
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "context":Landroid/content/Context;
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v12, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v9, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1678
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v12, :cond_12

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-ne v9, v10, :cond_12

    .line 1681
    const-string v9, "ril.RildInit"

    const-string v12, "0"

    invoke-static {v9, v11, v12}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1682
    .local v7, "rildReady":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1687
    .end local v7    # "rildReady":Ljava/lang/String;
    :cond_12
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v12, :cond_13

    .line 1689
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v10, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1690
    :cond_13
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1692
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v9, :cond_15

    .line 1693
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-nez v9, :cond_14

    .line 1694
    const-string v9, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1696
    .restart local v2    # "context":Landroid/content/Context;
    const-string v9, "alarm"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1698
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v2, v11, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 1701
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1702
    const-string v9, "Alarm setting"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1703
    const/4 v9, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    add-long/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1706
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_14
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1707
    .local v3, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 1710
    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_15
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1711
    .restart local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 1713
    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_16
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1714
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v14}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected setPrefNetTypeForDataLockSim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "sim1Numeric"    # Ljava/lang/String;
    .param p2, "sim2Numeric"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5105
    const-string v6, "persist.radio.networklocklist"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5106
    .local v2, "networkLockList":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_data_call_slot"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5107
    .local v0, "dataPreferId":I
    const/4 v3, -0x1

    .line 5108
    .local v3, "setNetTypeForSim1":I
    const/4 v4, -0x1

    .line 5109
    .local v4, "setNetTypeForSim2":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v5

    .line 5111
    .local v5, "simSlot":I
    sput-boolean v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    .line 5112
    sput-boolean v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z

    .line 5113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5115
    if-nez v5, :cond_4

    .line 5116
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5118
    if-eq v0, v5, :cond_0

    .line 5119
    sput-boolean v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z

    .line 5120
    const/4 v3, 0x0

    .line 5135
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DataLockFeature] Master slot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Current Slot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setNetTypeForSim1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setNetTypeForSim2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setGsmOnlyModeFlag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5137
    if-eqz v3, :cond_1

    if-nez v4, :cond_7

    .line 5138
    :cond_1
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 5139
    .local v1, "isLTE":Z
    if-eqz v1, :cond_6

    .line 5140
    const-string v6, "[DataLockFeature] Set master slot network mode to L/W/G(Auto mode)"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5141
    const/16 v6, 0x9

    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 5146
    :goto_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 5171
    .end local v1    # "isLTE":Z
    :cond_2
    :goto_2
    return-void

    .line 5122
    :cond_3
    if-ne v0, v5, :cond_0

    .line 5123
    const/4 v3, 0x1

    goto :goto_0

    .line 5124
    :cond_4
    if-ne v8, v5, :cond_0

    .line 5125
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5126
    if-eq v0, v5, :cond_0

    .line 5127
    const/4 v4, 0x0

    goto :goto_0

    .line 5128
    :cond_5
    if-ne v0, v5, :cond_0

    .line 5129
    sput-boolean v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z

    .line 5130
    const/4 v4, 0x1

    goto :goto_0

    .line 5143
    .restart local v1    # "isLTE":Z
    :cond_6
    const-string v6, "[DataLockFeature] Set master slot network mode to W/G(Auto mode)"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5144
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_1

    .line 5166
    .end local v1    # "isLTE":Z
    :cond_7
    if-eq v3, v8, :cond_8

    if-ne v4, v8, :cond_2

    .line 5167
    :cond_8
    const-string v6, "[DataLockFeature] Set slave slot network mode to Gsm only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5168
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 5169
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/16 v8, 0x6d

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2845
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 2847
    .local v2, "isVoiceInService":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2848
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2850
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2851
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 2861
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    .line 2863
    .local v1, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2864
    .local v0, "dataRegType":I
    if-eqz v1, :cond_1

    .line 2865
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2866
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 2881
    :cond_1
    :goto_3
    return-void

    .end local v0    # "dataRegType":I
    .end local v1    # "isDataInService":Z
    .end local v2    # "isVoiceInService":Z
    :cond_2
    move v2, v4

    .line 2845
    goto :goto_0

    .line 2854
    .restart local v2    # "isVoiceInService":Z
    :cond_3
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 2858
    :cond_4
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    :cond_5
    move v1, v4

    .line 2861
    goto :goto_2

    .line 2867
    .restart local v0    # "dataRegType":I
    .restart local v1    # "isDataInService":Z
    :cond_6
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2868
    if-eqz v2, :cond_7

    .line 2870
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2874
    :cond_7
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2878
    :cond_8
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 2884
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2885
    return-void
.end method

.method protected showRescanDialog()V
    .locals 4

    .prologue
    .line 5549
    const-string v2, "ManualSelectionReceiver"

    const-string v3, "showRescanDialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 5552
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5554
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040914

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5555
    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5557
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRescanDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5559
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5565
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 5566
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$12;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5572
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 5573
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 5574
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsFlightMode:Z

    .line 5575
    return-void
.end method

.method protected updateApnPreferredMode()V
    .locals 11

    .prologue
    const v10, 0x4206d

    const/16 v9, 0x6a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4985
    const-string v4, "persist.radio.rplmn"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4986
    .local v0, "checkRplmn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 4987
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLteDataOnRoamingEnabled()Z

    move-result v3

    .line 4988
    .local v3, "isLteRoamingOn":Z
    const/4 v2, 0x0

    .line 4990
    .local v2, "hasRegiedMccInKor":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4991
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 4994
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE_ROAMING : hasRegistered in Roam, persist.radio.rplmn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LteRoamingOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4996
    const-string v4, "domestic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 4997
    const-string v4, "persist.radio.rplmn"

    const-string v5, "oversea"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4999
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportInitialAttachRequest"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5001
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 5006
    :goto_0
    if-nez v3, :cond_2

    .line 5007
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "LGT"

    const-string v5, "EUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5009
    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteDataOnRoamingEnabled(Z)V

    .line 5010
    const-string v4, "LTE_ROAMING : Home -> Roaming : Skip setPreferredNetwork Type G/W for LGT VoLTE Roaming"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5046
    :cond_2
    :goto_1
    return-void

    .line 5003
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    goto :goto_0

    .line 5012
    :cond_4
    const-string v4, "LTE_ROAMING : Home -> Roaming : setPreferredNetworkType G/W"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5013
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 5018
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE_ROAMING : hasRegistered, persist.radio.rplmn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LteRoamingOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5019
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "LGT"

    const-string v5, "EUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5021
    const-string v4, "LTE_ROAMING : Roaming -> Home : Skip lte roaming set enable for LGT VoLTE Roaming"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteDataOnRoamingEnabled(Z)V

    .line 5026
    :goto_2
    const-string v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5027
    const-string v4, "LTE_ROAMING : getPreferredNetworkType by checkRplmn(oversea)"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5028
    const-string v4, "persist.radio.rplmn"

    const-string v5, "domestic"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportInitialAttachRequest"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5032
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 5037
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 5044
    :goto_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    goto/16 :goto_1

    .line 5024
    :cond_6
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setLteDataOnRoamingEnabled(Z)V

    goto :goto_2

    .line 5034
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyApnChangeToRIL()V

    goto :goto_3

    .line 5038
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceivedHomeNetowkNoti:Z

    if-eqz v4, :cond_9

    .line 5039
    const-string v4, "LTE_ROAMING : getPreferredNetworkType by mReceivedHomeNetowkNoti"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5040
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_4

    .line 5042
    :cond_9
    const-string v4, "LTE_ROAMING : checkRplmn(null or domestic) && mReceivedHomeNetowkNoti(false)"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "plmnValue"    # Ljava/lang/String;

    .prologue
    .line 5593
    move-object/from16 v5, p1

    .line 5594
    .local v5, "mPlmn":Ljava/lang/String;
    const-string v14, "gsm.sim.operator.numeric"

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5595
    .local v7, "mSim":Ljava/lang/String;
    const-string v14, "gsm.sim.cdmaoperator.numeric"

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5596
    .local v3, "cdmaNumeric":Ljava/lang/String;
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5597
    .local v9, "salesCode":Ljava/lang/String;
    const-string v14, "Access updateChinaSpnDisplay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isChinaTelecomSim(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1040126

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5602
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Airplane mode, plmn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object v6, v5

    .line 5730
    .end local v5    # "mPlmn":Ljava/lang/String;
    .local v6, "mPlmn":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 5605
    .end local v6    # "mPlmn":Ljava/lang/String;
    .restart local v5    # "mPlmn":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v13

    .line 5607
    .local v13, "spn":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v14, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-nez v14, :cond_15

    .line 5608
    const-string v14, "460"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5609
    const-string v14, "gsm.network.type"

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5610
    .local v4, "mAct":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    if-nez v14, :cond_9

    .line 5611
    const-string v14, "46001"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "46009"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5612
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x104096d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5619
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CMCC"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CU"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 5620
    const-string v14, "MVNO Operator - Copy SPN value to PLMN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 5621
    move-object v5, v13

    .line 5682
    .end local v4    # "mAct":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v14, "CTC"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 5683
    const-string v14, "gsm.sim.state"

    const-string v15, "ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5684
    .local v2, "CardStatusGSM":Ljava/lang/String;
    const-string v14, "gsm.sim.currentcardstatus"

    const-string v15, "3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5686
    .local v1, "CardOffStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 5687
    .local v10, "simDBvalue0":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 5689
    .local v11, "simDBvalue1":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CardStatusGSM = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " CardOffStatus = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5690
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simDBvalue0 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simDBvalue1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5691
    const-string v14, "UNKNOWN"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "READY"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    :cond_3
    const-string v14, "2"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 5693
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040978

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5710
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 5711
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040126

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Airplane mode, plmn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5716
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 5717
    const-string v5, "--"

    .end local v1    # "CardOffStatus":Ljava/lang/String;
    .end local v2    # "CardStatusGSM":Ljava/lang/String;
    .end local v10    # "simDBvalue0":I
    .end local v11    # "simDBvalue1":I
    :cond_6
    :goto_5
    move-object v6, v5

    .line 5730
    .end local v5    # "mPlmn":Ljava/lang/String;
    .restart local v6    # "mPlmn":Ljava/lang/String;
    goto/16 :goto_0

    .line 5605
    .end local v6    # "mPlmn":Ljava/lang/String;
    .end local v13    # "spn":Ljava/lang/String;
    .restart local v5    # "mPlmn":Ljava/lang/String;
    :cond_7
    const-string v13, ""

    goto/16 :goto_1

    .line 5615
    .restart local v4    # "mAct":Ljava/lang/String;
    .restart local v13    # "spn":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x104096c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 5624
    :cond_9
    const-string v14, "CHM"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "46001"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "46009"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 5625
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x104096c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5627
    const-string v14, "GsmSST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[ROAM] It is roaming state with CHINA Operators SIM card. Except CMCC, Display registered plmn : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5630
    .end local v4    # "mAct":Ljava/lang/String;
    :cond_a
    const-string v14, "466"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 5631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    if-nez v14, :cond_2

    .line 5632
    const-string v14, "46692"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 5633
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x104096e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5635
    :cond_b
    const-string v14, "46601"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 5636
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x104096f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5638
    :cond_c
    const-string v14, "46688"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 5639
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040970

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5641
    :cond_d
    const-string v14, "46689"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 5642
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040971

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5644
    :cond_e
    const-string v14, "46697"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "46693"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "46699"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 5645
    :cond_f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040972

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5647
    :cond_10
    const-string v14, "46605"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 5648
    move-object v5, v13

    goto/16 :goto_3

    .line 5651
    :cond_11
    const-string v14, "454"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    if-nez v14, :cond_14

    .line 5653
    const-string v14, "45412"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "45413"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 5654
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040975

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5656
    :cond_13
    const-string v14, "45407"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    const-string v15, "460"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x104096d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5661
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 5662
    .local v8, "opNum":Ljava/lang/String;
    const-string v14, "45407"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v8, :cond_2

    const-string v14, "460"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5663
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x104096d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5668
    .end local v8    # "opNum":Ljava/lang/String;
    :cond_15
    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_16

    const-string v14, "CTC"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 5670
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040277

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 5672
    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v15, 0x2

    if-ge v14, v15, :cond_2

    .line 5673
    const-string v14, "gsm.sim.state"

    const-string v15, "ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5674
    .local v12, "simState":Ljava/lang/String;
    const-string v14, "ABSENT"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string v14, "UNKNOWN"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string v14, "NOT_READY"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5678
    :cond_17
    const-string v5, "No SIM card"

    goto/16 :goto_3

    .line 5696
    .end local v12    # "simState":Ljava/lang/String;
    .restart local v1    # "CardOffStatus":Ljava/lang/String;
    .restart local v2    # "CardStatusGSM":Ljava/lang/String;
    .restart local v10    # "simDBvalue0":I
    .restart local v11    # "simDBvalue1":I
    :cond_18
    const-string v14, "ABSENT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, "UNKNOWN"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    const-string v14, "NOT_READY"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 5697
    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040979

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 5700
    :cond_1a
    const-string v14, "PIN_REQUIRED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    const-string v14, "PUK_REQUIRED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 5701
    :cond_1b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040977

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 5704
    :cond_1c
    if-nez v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    if-nez v14, :cond_1d

    const-string v14, "3"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    :cond_1d
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const-string v14, "3"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5706
    :cond_1e
    const-string v14, "Sim will be activate/deactivate soon, plmn set to --"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5707
    const-string v5, "--"

    goto/16 :goto_4

    .line 5720
    .end local v1    # "CardOffStatus":Ljava/lang/String;
    .end local v2    # "CardStatusGSM":Ljava/lang/String;
    .end local v10    # "simDBvalue0":I
    .end local v11    # "simDBvalue1":I
    :cond_1f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v15, 0x2

    if-ge v14, v15, :cond_6

    .line 5721
    const-string v14, "gsm.sim.state"

    const-string v15, "ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5722
    .restart local v12    # "simState":Ljava/lang/String;
    const-string v14, "ABSENT"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    const-string v14, "UNKNOWN"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    const-string v14, "NOT_READY"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 5726
    :cond_20
    const-string v5, "No SIM card"

    goto/16 :goto_5
.end method

.method protected updateIndonesiaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plmnValue"    # Ljava/lang/String;

    .prologue
    .line 5772
    move-object v0, p1

    .line 5773
    .local v0, "mPlmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPlmnPsOnly(I)Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    move-result-object v1

    .line 5774
    .local v1, "plmnPs":Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->None:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    .line 5775
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Bolt:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    if-ne v1, v2, :cond_1

    .line 5776
    const-string v0, "BOLT! Super 4G"

    .line 5780
    :cond_0
    :goto_0
    return-object v0

    .line 5777
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Smartfren:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    if-ne v1, v2, :cond_0

    .line 5778
    const-string v0, "Smartfren"

    goto :goto_0
.end method

.method protected updateRoamingState()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2720
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v11, :cond_a

    :cond_0
    move v8, v10

    .line 2730
    .local v8, "roaming":Z
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v8}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2732
    const-string v11, "carrier_config"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ICarrierConfigLoader;

    .line 2734
    .local v2, "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-eqz v2, :cond_d

    .line 2736
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v11

    invoke-interface {v2, v11}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2738
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2739
    const-string v11, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    const/4 v8, 0x0

    .line 2759
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_1
    const-string v11, "2GNRP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_FakeRoamingOption4"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2760
    const-string v11, "gsm.sim.operator.numeric"

    const-string v12, ""

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 2761
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Control fake roaming, mRoamingMode = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2762
    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingMode:I

    if-eqz v11, :cond_3

    .line 2763
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeHomeOn(Landroid/telephony/ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2764
    const/4 v8, 0x0

    .line 2766
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingOn(Landroid/telephony/ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2767
    const/4 v8, 0x1

    .line 2786
    :cond_3
    :goto_2
    const-string v11, "SPR"

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2787
    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegistrationState:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v11

    if-eq v11, v10, :cond_12

    .line 2788
    if-eqz v8, :cond_11

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v11, :cond_11

    move v11, v10

    :goto_3
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSprintRoamingIndicator(Z)V

    .line 2797
    :cond_4
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v8}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2798
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v8}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2800
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v11, :cond_13

    move v11, v10

    :goto_5
    invoke-virtual {v12, v11}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2801
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v12

    if-eqz v12, :cond_14

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v12, :cond_14

    :goto_6
    invoke-virtual {v11, v10}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2802
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2804
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    const-string v9, "001"

    const-string v10, "gsm.operator.numeric"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "999"

    const-string v10, "gsm.operator.numeric"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2809
    const-string v9, "ril.ICC_TYPE"

    const-string v10, "0"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2810
    .local v5, "iccType":Ljava/lang/String;
    if-nez v8, :cond_7

    const-string v9, "3"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 2811
    const-string v9, "gsm.sim.cdmaoperator.numeric"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2812
    .local v1, "cdmaSimNumeric":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2813
    .local v7, "operNum":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2814
    .local v4, "equalsMcc":Z
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v14, :cond_7

    .line 2816
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2817
    if-nez v4, :cond_7

    .line 2818
    const/4 v8, 0x1

    .line 2823
    .end local v1    # "cdmaSimNumeric":Ljava/lang/String;
    .end local v4    # "equalsMcc":Z
    .end local v7    # "operNum":Ljava/lang/String;
    :cond_7
    :goto_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v8}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2824
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v8}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2825
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2828
    .end local v5    # "iccType":Ljava/lang/String;
    :cond_8
    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2838
    :cond_9
    return-void

    .end local v2    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    .end local v8    # "roaming":Z
    :cond_a
    move v8, v9

    .line 2720
    goto/16 :goto_0

    .line 2741
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v2    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    .restart local v8    # "roaming":Z
    :cond_b
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2742
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2744
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2745
    :cond_c
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2746
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2748
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2750
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :catch_0
    move-exception v3

    .line 2751
    .local v3, "e":Landroid/os/RemoteException;
    const-string v11, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2754
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string v11, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2771
    :cond_e
    const-string v11, "Control fake roaming, SIM is not ready. roaming set as false"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2772
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2775
    :cond_f
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeHomeOn(Landroid/telephony/ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2776
    const/4 v8, 0x0

    .line 2778
    :cond_10
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingOn(Landroid/telephony/ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2779
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_11
    move v11, v9

    .line 2788
    goto/16 :goto_3

    .line 2791
    :cond_12
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowDataGuard:Z

    .line 2792
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bshowSmsGuard:Z

    .line 2793
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_CLOSE_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2794
    .local v6, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4

    .end local v6    # "intent":Landroid/content/Intent;
    :cond_13
    move v11, v9

    .line 2800
    goto/16 :goto_5

    :cond_14
    move v10, v9

    .line 2801
    goto/16 :goto_6

    .line 2820
    .restart local v1    # "cdmaSimNumeric":Ljava/lang/String;
    .restart local v4    # "equalsMcc":Z
    .restart local v5    # "iccType":Ljava/lang/String;
    .restart local v7    # "operNum":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7
.end method

.method protected updateSpnDisplay()V
    .locals 41

    .prologue
    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    .line 1773
    .local v19, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v6, 0x0

    .line 1774
    .local v6, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1775
    .local v5, "showPlmn":Z
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1776
    .local v34, "salesCode":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1778
    .local v23, "isShowCSL":Z
    const-string v9, "isValidPlmn"

    .line 1779
    .local v9, "EXTRA_IS_VALID_PLMN":Ljava/lang/String;
    const/16 v24, 0x1

    .line 1783
    .local v24, "isValidPlmn":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWfcRegistered()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    .line 1786
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-eqz v3, :cond_0

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1790
    :cond_0
    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v33

    .line 1791
    .local v33, "rule":I
    :goto_0
    if-eqz v19, :cond_14

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayCondition()I

    move-result v14

    .line 1793
    .local v14, "efSPN":I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1795
    .local v17, "iAirplanemode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v3, :cond_15

    .line 1796
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string v39, "<undefined>"

    move-object/from16 v0, v39

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1803
    const/4 v5, 0x1

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const-string v4, "310260"

    invoke-virtual {v3, v6, v6, v4}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    if-nez v17, :cond_1

    .line 1806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1818
    .end local v17    # "iAirplanemode":I
    :cond_1
    :goto_2
    const-string v3, "TFN"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_3

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1821
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const-string v4, "Roaming"

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1828
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 1830
    :cond_4
    const/4 v5, 0x1

    .line 1831
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->isUsaCdmaModel()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "EUR"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1833
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1834
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    .line 1862
    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->showEpdgNetNameWhenEpdgRegiAndCSOos()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-eqz v3, :cond_7

    .line 1863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1864
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    .line 1870
    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1890
    :goto_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telephony/TelephonyManager;

    .line 1892
    .local v38, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v21

    .line 1893
    .local v21, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v29

    .line 1895
    .local v29, "operatorMccMnc":Ljava/lang/String;
    new-instance v26, Lcom/android/internal/telephony/MVNOSupportList;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/telephony/MVNOSupportList;-><init>()V

    .line 1902
    .local v26, "mMVNOSupportList":Lcom/android/internal/telephony/MVNOSupportList;
    if-nez v26, :cond_8

    .line 1904
    new-instance v26, Lcom/android/internal/telephony/MVNOSupportList;

    .end local v26    # "mMVNOSupportList":Lcom/android/internal/telephony/MVNOSupportList;
    invoke-direct/range {v26 .. v26}, Lcom/android/internal/telephony/MVNOSupportList;-><init>()V

    .line 1907
    .restart local v26    # "mMVNOSupportList":Lcom/android/internal/telephony/MVNOSupportList;
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MVNOSupportList;->getMVNOName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1910
    .local v28, "mvnoPLMN":Ljava/lang/String;
    if-eqz v28, :cond_9

    .line 1911
    move-object/from16 v6, v28

    .line 1917
    .end local v21    # "imsi":Ljava/lang/String;
    .end local v26    # "mMVNOSupportList":Lcom/android/internal/telephony/MVNOSupportList;
    .end local v28    # "mvnoPLMN":Ljava/lang/String;
    .end local v29    # "operatorMccMnc":Ljava/lang/String;
    .end local v38    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    if-eqz v19, :cond_a

    .line 1918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v33

    .line 1920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_a

    .line 1921
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    and-int/lit8 v3, v33, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    const/4 v5, 0x1

    .line 1927
    :cond_a
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsSIMLoadDone:Z

    if-nez v3, :cond_28

    :cond_b
    const-string v3, "CTC"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1936
    const/16 v31, 0x0

    .line 1938
    .local v31, "plmn_SIMNotLoaded":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1939
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v35

    .line 1940
    .local v35, "simState":I
    const-string v3, "EUR"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "CHINA"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1941
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    .line 1942
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v35

    .line 1948
    :cond_d
    :goto_8
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v35

    if-eq v0, v3, :cond_e

    const/4 v3, 0x3

    move/from16 v0, v35

    if-eq v0, v3, :cond_e

    const/4 v3, 0x4

    move/from16 v0, v35

    if-eq v0, v3, :cond_e

    const/16 v3, 0xa

    move/from16 v0, v35

    if-ne v0, v3, :cond_24

    .line 1951
    :cond_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104028f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1969
    .end local v35    # "simState":I
    :cond_f
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: SIM records are not loaded - plmn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1971
    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1972
    new-instance v22, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    .line 1974
    const/high16 v3, 0x20000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1975
    :cond_10
    const-string v3, "showSpn"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1976
    const-string v3, "spn"

    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string v3, "showPlmn"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1978
    const-string v3, "isValidPlmn"

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1979
    const-string v3, "efspn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1980
    const-string v3, "plmn"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1984
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2012
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2014
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    packed-switch v3, :pswitch_data_0

    .line 2302
    .end local v31    # "plmn_SIMNotLoaded":Ljava/lang/String;
    :cond_12
    :goto_a
    :pswitch_0
    return-void

    .line 1790
    .end local v14    # "efSPN":I
    .end local v33    # "rule":I
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 1791
    .restart local v33    # "rule":I
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1809
    .restart local v14    # "efSPN":I
    .restart local v17    # "iAirplanemode":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "PREFERRED_OPTION"

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-static {v3, v4, v0}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1810
    .local v18, "iImsConnectionProfile":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CELL_ONLY"

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-static {v3, v4, v0}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    .line 1811
    .local v10, "bCellOnly":Z
    if-nez v17, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v3, :cond_1

    .line 1812
    const-string v3, "GsmSST"

    const-string v4, "IMS WIFI Only mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    goto/16 :goto_2

    .line 1823
    .end local v10    # "bCellOnly":Z
    .end local v17    # "iAirplanemode":I
    .end local v18    # "iImsConnectionProfile":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1836
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1838
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v3, :cond_19

    .line 1841
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104028f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1845
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1846
    .local v11, "configPsOnly":Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1847
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateIndonesiaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1851
    .end local v11    # "configPsOnly":Ljava/lang/String;
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportCallOnAirplaneMode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportEpdgOnAirplaneMode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-eqz v3, :cond_1b

    .line 1854
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay - isWFCReigstered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1855
    :cond_1b
    const-string v3, "CTC"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1856
    const-string v6, "--"

    goto/16 :goto_4

    .line 1858
    :cond_1c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1866
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 1872
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_21

    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .line 1875
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    .line 1878
    :cond_1f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    and-int/lit8 v3, v33, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    const/4 v5, 0x1

    :goto_b
    goto/16 :goto_6

    :cond_20
    const/4 v5, 0x0

    goto :goto_b

    .line 1883
    :cond_21
    const/4 v5, 0x1

    .line 1884
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1921
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1944
    .restart local v31    # "plmn_SIMNotLoaded":Ljava/lang/String;
    .restart local v35    # "simState":I
    :cond_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_d

    .line 1945
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v35

    goto/16 :goto_8

    .line 1953
    :cond_24
    if-nez v35, :cond_f

    .line 1954
    const-string v3, "ATT"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "AIO"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "TMB"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "TMK"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "MTR"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1956
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104028f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_9

    .line 1960
    .end local v35    # "simState":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_27

    .line 1962
    :cond_26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_9

    .line 1964
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_f

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: Registered but SIM not loaded - plmn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2019
    :pswitch_1
    const-string v3, "updateSpnDisplay : getRejectCauseDisplay set true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2020
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    goto/16 :goto_a

    .line 2029
    .end local v31    # "plmn_SIMNotLoaded":Ljava/lang/String;
    :cond_28
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_29

    .line 2033
    const-string v3, "updateSpnDisplay : getRejectCauseDisplay set false"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2034
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getRejectCauseDisplay:Z

    .line 2037
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->displayLUrejectcause()I

    move-result v20

    .line 2039
    .local v20, "id":I
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v3, :cond_2a

    .line 2040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay : id by displayLUrejectcause() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2043
    :cond_2a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v32

    .line 2044
    .local v32, "r":Landroid/content/res/Resources;
    if-eqz v20, :cond_2c

    .line 2045
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2047
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v3, :cond_2b

    .line 2048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay : plmn by displayLUrejectcause() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2051
    :cond_2b
    const/16 v24, 0x0

    .line 2053
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 2054
    const/16 v33, 0x2

    .line 2098
    .end local v20    # "id":I
    .end local v32    # "r":Landroid/content/res/Resources;
    :cond_2d
    if-eqz v19, :cond_41

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    .line 2099
    .local v8, "spn":Ljava/lang/String;
    :goto_c
    move-object v13, v8

    .line 2100
    .local v13, "dataSpn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_42

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    and-int/lit8 v3, v33, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    const/4 v7, 0x1

    .line 2105
    .local v7, "showSpn":Z
    :goto_d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2111
    .local v16, "formatVoice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2113
    .local v15, "formatData":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 2114
    .local v30, "originalSpn":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v30, v3, v4

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2115
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v30, v3, v4

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2116
    const/4 v7, 0x1

    .line 2117
    const/4 v5, 0x0

    .line 2125
    .end local v15    # "formatData":Ljava/lang/String;
    .end local v16    # "formatVoice":Ljava/lang/String;
    .end local v30    # "originalSpn":Ljava/lang/String;
    :cond_2e
    :goto_e
    const-string v3, "CHM"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "TGY"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "BRI"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CWT"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "FET"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "TWM"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CHZ"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CHU"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CHC"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CHN"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "CTC"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2129
    :cond_2f
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2130
    .local v27, "mOperatorSim":Ljava/lang/String;
    const/16 v33, 0x2

    .line 2131
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateChinaSpnDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2133
    if-eqz v27, :cond_46

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 2134
    const-string v3, "45400"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "45402"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "45410"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "46605"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "45418"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "45416"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "45419"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_30
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_45

    .line 2136
    const/16 v33, 0x1

    .line 2144
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay : updateChinaSpnDisplay() rule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2160
    :cond_31
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v3, :cond_47

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    and-int/lit8 v3, v33, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    const/4 v7, 0x1

    .line 2166
    .end local v27    # "mOperatorSim":Ljava/lang/String;
    :cond_32
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_IgnoreWrongNITZInformation"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2167
    if-eqz v6, :cond_33

    .line 2168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkIgnoreNITZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2172
    :cond_33
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz v8, :cond_34

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2174
    const-string v3, "spn string == plmn string, showing only plmn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2175
    const/4 v5, 0x1

    .line 2176
    const/4 v7, 0x0

    .line 2180
    :cond_34
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWFCReigstered:Z

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->isUsaCdmaModel()Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "EUR"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 2183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 2184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG registered, force set PLMN name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    .line 2186
    const/4 v5, 0x1

    .line 2194
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_36

    .line 2195
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v25

    .line 2196
    .local v25, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v25, :cond_36

    .line 2197
    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getCustomOperatorName()Ljava/lang/String;

    move-result-object v12

    .line 2198
    .local v12, "customPlmn":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 2199
    const/4 v5, 0x1

    .line 2200
    const/4 v7, 0x0

    .line 2201
    move-object v6, v12

    .line 2208
    .end local v12    # "customPlmn":Ljava/lang/String;
    .end local v25    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    :cond_36
    const/16 v36, -0x1

    .line 2209
    .local v36, "subId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v37

    .line 2210
    .local v37, "subIds":[I
    if-eqz v37, :cond_37

    move-object/from16 v0, v37

    array-length v3, v0

    if-lez v3, :cond_37

    .line 2211
    const/4 v3, 0x0

    aget v36, v37, v3

    .line 2215
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    move/from16 v0, v36

    if-ne v3, v0, :cond_39

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    if-ne v5, v3, :cond_39

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-ne v7, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    .line 2227
    :cond_39
    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z

    if-nez v3, :cond_12

    .line 2239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 2241
    const-string v3, "ServiceState isn\'t in service, do not show spn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2243
    const/4 v7, 0x0

    .line 2246
    :cond_3a
    const-string v3, "CTC"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2247
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 2248
    const/4 v5, 0x1

    .line 2253
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v39, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    aput-object v40, v4, v39

    const/16 v39, 0x1

    aput-object v6, v4, v39

    const/16 v39, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    aput-object v40, v4, v39

    const/16 v39, 0x3

    aput-object v8, v4, v39

    const/16 v39, 0x4

    aput-object v13, v4, v39

    const/16 v39, 0x5

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v4, v39

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2259
    new-instance v22, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2260
    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3c

    .line 2261
    const/high16 v3, 0x20000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2262
    :cond_3c
    const-string v3, "showSpn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2263
    const-string v3, "spn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    const-string v3, "spnData"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    const-string v3, "showPlmn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2266
    const-string v3, "isValidPlmn"

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2267
    const-string v3, "efspn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2268
    const-string v3, "plmn"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2274
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    .line 2277
    :cond_3d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f

    .line 2278
    if-eqz v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_3f

    .line 2279
    :cond_3e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_48

    .line 2280
    const-string v3, "persist.radio.plmnname_2"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM2 plmn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2289
    :cond_3f
    :goto_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z

    .line 2292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2296
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_40
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    .line 2297
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 2298
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 2299
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 2300
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 2301
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    goto/16 :goto_a

    .line 2098
    .end local v7    # "showSpn":Z
    .end local v8    # "spn":Ljava/lang/String;
    .end local v13    # "dataSpn":Ljava/lang/String;
    .end local v36    # "subId":I
    .end local v37    # "subIds":[I
    :cond_41
    const-string v8, ""

    goto/16 :goto_c

    .line 2100
    .restart local v8    # "spn":Ljava/lang/String;
    .restart local v13    # "dataSpn":Ljava/lang/String;
    :cond_42
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 2118
    .restart local v7    # "showSpn":Z
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    if-eqz v5, :cond_2e

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2121
    :cond_44
    const/4 v8, 0x0

    .line 2122
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 2139
    .restart local v27    # "mOperatorSim":Ljava/lang/String;
    :cond_45
    const/16 v33, 0x2

    .line 2140
    const/16 v23, 0x1

    .line 2141
    const/4 v7, 0x0

    .line 2142
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 2147
    :cond_46
    const-string v3, "CSL"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v5, :cond_31

    if-nez v7, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2148
    const-string v3, "HongKong CSL special requirment"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2149
    const/16 v33, 0x2

    .line 2150
    const/4 v5, 0x1

    .line 2151
    const/4 v7, 0x0

    .line 2153
    const/16 v33, 0x0

    .line 2154
    const/4 v8, 0x0

    .line 2155
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 2160
    :cond_47
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 2284
    .end local v27    # "mOperatorSim":Ljava/lang/String;
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v36    # "subId":I
    .restart local v37    # "subIds":[I
    :cond_48
    const-string v3, "persist.radio.plmnname_1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM1 plmn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2014
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "cellLocation"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    .line 5287
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisableEons"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5305
    :cond_0
    :goto_0
    return-void

    .line 5291
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 5292
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5293
    const-string v1, "operatorNumeric is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5297
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mIsEnabledPNN:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mIsPNNExist:Z

    if-eqz v1, :cond_0

    .line 5298
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5299
    .local v0, "eons":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5300
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 5301
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update operatorAlphaLong to eonsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
