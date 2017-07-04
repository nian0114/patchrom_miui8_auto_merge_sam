.class public Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;,
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field public static final CELL_BROADCAST_ENABLE:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final ETWS_TEST:Ljava/lang/String; = "jp.co.android.softbankCBM.ETWS"

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field static final NETTEXT_GSM_SMS_CBMI_LIST_SIZE_MAX:I = 0x64

.field private static final OEM_FUNCTION_ID_NETWORK:I = 0x2

.field private static final OEM_HIDDEN_MAIN_CMD:I = 0x51

.field private static final OEM_NET_GET_MODEM_CAP:I = 0x61

.field private static final OEM_NET_UPDATE_SUB_BINDING:I = 0x62

.field private static final OEM_SUB_SIM_LOCK_GET:I = 0x42

.field private static final OEM_SUB_SIM_LOCK_SET:I = 0x41

.field static final RADIO_SCREEN_OFF:I = 0x0

.field static final RADIO_SCREEN_ON:I = 0x1

.field static final RADIO_SCREEN_UNSET:I = -0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SHIP_BUILD:Z

.field static final SOCKET_NAME_RIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final USSD_DCS_KS5601:I = 0x94

.field static final WAPPUSH_TEST:Ljava/lang/String; = "jp.co.android.ETWS_WAPPUSH"


# instance fields
.field private initPhoneType:I

.field private final mBatteryStateListener:Landroid/content/BroadcastReceiver;

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayState:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDtmfProgress:I

.field private mInstanceId:Ljava/lang/Integer;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsDevicePlugged:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mRadioScreenState:I

.field mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/RIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 298
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rild"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rild2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rild3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 782
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 331
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    .line 332
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 333
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    .line 342
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 347
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/RIL;->initPhoneType:I

    .line 351
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 390
    new-instance v10, Lcom/android/internal/telephony/RIL$1;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    new-instance v10, Lcom/android/internal/telephony/RIL$2;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/RIL$2;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 464
    new-instance v10, Lcom/android/internal/telephony/RIL$3;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/RIL$3;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    .line 788
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RIL(context, preferredNetworkType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cdmaSubscription="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " instanceId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 792
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 793
    move/from16 v0, p3

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 794
    move/from16 v0, p2

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 796
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    .line 798
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 799
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    .line 801
    const-string v10, "power"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 802
    .local v6, "pm":Landroid/os/PowerManager;
    const/4 v11, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RILJ"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-nez v10, :cond_2

    const-string v10, ""

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 804
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 805
    const-string v10, "ro.ril.wake_lock_timeout"

    const v11, 0xea60

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 807
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 809
    new-instance v10, Landroid/os/HandlerThread;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RILSender"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 810
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 812
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 813
    .local v5, "looper":Landroid/os/Looper;
    new-instance v10, Lcom/android/internal/telephony/RIL$RILSender;

    invoke-direct {v10, p0, v5}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    .line 815
    const-string v10, "connectivity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 817
    .local v2, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 818
    const-string v10, "Not starting RILReceiver: wifi-only"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v9

    .line 847
    .local v9, "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 849
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 850
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 851
    .local v7, "safetycareFilter":Landroid/content/IntentFilter;
    const-string v10, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    .end local v7    # "safetycareFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 802
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "looper":Landroid/os/Looper;
    .end local v9    # "tdc":Lcom/android/internal/telephony/TelephonyDevController;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 820
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting RILReceiver"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 821
    new-instance v10, Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    .line 822
    new-instance v10, Ljava/lang/Thread;

    iget-object v11, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RILReceiver"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    .line 823
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 825
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 827
    .local v8, "sbmExtendFilter":Landroid/content/IntentFilter;
    const-string v10, "jp.co.android.softbankCBM.ETWS"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v10, "jp.co.android.ETWS_WAPPUSH"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 832
    const-string v10, "display"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 834
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    .line 835
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 836
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getState()I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    .line 838
    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 839
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mBatteryStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 840
    .local v1, "batteryStatus":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 842
    const-string v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/internal/telephony/RIL;->mIsDevicePlugged:Z

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RIL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # Z

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # I

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/RIL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->clearWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/RIL;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p1, "x1"    # I

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 2966
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2967
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2968
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2970
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2971
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2972
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2973
    monitor-exit v2

    .line 2974
    return-void

    .line 2973
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 3045
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3046
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3047
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 3048
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearRequestList  mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3054
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 3055
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_1

    .line 3056
    const-string v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3060
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 3061
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    .line 3053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3063
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3064
    monitor-exit v4

    .line 3065
    return-void

    .line 3064
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearWakeLock()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2992
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2993
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    .line 2998
    :goto_0
    return v0

    .line 2994
    :cond_0
    const-string v0, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2997
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2998
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 2999
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "pdu"    # [B

    .prologue
    .line 1774
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1775
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1778
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1780
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v0, v7

    .line 1786
    .local v0, "address_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1787
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1788
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1787
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1792
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v6, v7

    .line 1793
    .local v6, "subaddr_nbr_of_digits":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v8, v6

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1794
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 1795
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1794
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1798
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1799
    .local v2, "bearerDataLength":I
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1801
    iget-object v7, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1803
    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    .line 1804
    .local v4, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1807
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    .prologue
    .line 1739
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1741
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1742
    return-void
.end method

.method private decrementWakeLock()V
    .locals 3

    .prologue
    .line 2978
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2979
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2980
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2986
    :goto_0
    monitor-exit v1

    .line 2987
    return-void

    .line 2982
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2984
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    goto :goto_0

    .line 2986
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 4
    .param p1, "serial"    # I

    .prologue
    .line 3068
    const/4 v1, 0x0

    .line 3069
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3070
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v1, v0

    .line 3071
    if-eqz v1, :cond_0

    .line 3072
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3074
    :cond_0
    monitor-exit v3

    .line 3076
    return-object v1

    .line 3074
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 4782
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 4784
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 4785
    const/4 v5, 0x5

    if-ge p2, v5, :cond_1

    .line 4786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 4787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 4788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 4789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4790
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4791
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 4832
    :cond_0
    :goto_0
    return-object v1

    .line 4794
    .end local v0    # "addresses":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 4795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 4796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 4797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 4798
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 4799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 4800
    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4802
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "getDataCallResponse, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4804
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4805
    .restart local v0    # "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4806
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 4808
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4809
    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4810
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 4812
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4814
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    const-string v6, "IP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4815
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/RIL;->modifyDnsByCpa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 4818
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4819
    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4820
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 4822
    :cond_6
    const/16 v5, 0xa

    if-lt p2, v5, :cond_7

    .line 4823
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4824
    .local v4, "pcscf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4825
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 4828
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_7
    const/16 v5, 0xb

    if-lt p2, v5, :cond_0

    .line 4829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    goto/16 :goto_0
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .param p1, "stateInt"    # I

    .prologue
    .line 2915
    sparse-switch p1, :sswitch_data_0

    .line 2921
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2916
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2924
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 2917
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2918
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2915
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "rilCommand"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .prologue
    .line 6243
    invoke-static {p1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6244
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6245
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6246
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6247
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6248
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6249
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6250
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6255
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6256
    return-void
.end method

.method private isDebugLevelNotLow()Z
    .locals 3

    .prologue
    .line 6985
    const-string v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6987
    .local v0, "sysLoglevel":Ljava/lang/String;
    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6988
    const/4 v1, 0x0

    .line 6990
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3435
    const/4 v4, 0x1

    .line 3437
    .local v4, "raf":I
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040057

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3439
    .local v7, "rafString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3440
    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v4

    .line 3442
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v5, ""

    const/4 v6, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 3444
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3445
    return-object v0
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .prologue
    const/4 v4, 0x0

    .line 5218
    const/16 v0, 0x403

    .line 5219
    .local v0, "response":I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 5220
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5221
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5222
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5262
    :cond_0
    :goto_0
    return-void

    .line 5225
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 5226
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5227
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5228
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 5231
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 5232
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5233
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5234
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 5237
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 5238
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5239
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5240
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 5243
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 5244
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5245
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5246
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 5249
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 5250
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5251
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5252
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 5255
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 5256
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 5257
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 5258
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .param p1, "rilVer"    # I

    .prologue
    const/4 v3, 0x0

    .line 4381
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    .line 4382
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 4383
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4386
    :cond_0
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3027
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3028
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 3036
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    if-nez v1, :cond_0

    .line 3030
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3031
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_0

    .line 3032
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 3033
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock()V

    goto :goto_0
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 613
    const/4 v2, 0x0

    .line 614
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 616
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 618
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 619
    const-string v5, "RILJ"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 648
    :goto_0
    return v1

    .line 623
    :cond_1
    add-int/2addr v2, v0

    .line 624
    sub-int/2addr v3, v0

    .line 625
    if-gtz v3, :cond_0

    .line 627
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 633
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 634
    move v3, v1

    .line 636
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 638
    if-gez v0, :cond_3

    .line 639
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 641
    goto :goto_0

    .line 644
    :cond_3
    add-int/2addr v2, v0

    .line 645
    sub-int/2addr v3, v0

    .line 646
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 5515
    sparse-switch p0, :sswitch_data_0

    .line 5684
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 5516
    :sswitch_0
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 5517
    :sswitch_1
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 5518
    :sswitch_2
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 5519
    :sswitch_3
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 5520
    :sswitch_4
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 5521
    :sswitch_5
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 5522
    :sswitch_6
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 5523
    :sswitch_7
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_0

    .line 5524
    :sswitch_8
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 5525
    :sswitch_9
    const-string v0, "DIAL"

    goto :goto_0

    .line 5526
    :sswitch_a
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 5527
    :sswitch_b
    const-string v0, "HANGUP"

    goto :goto_0

    .line 5528
    :sswitch_c
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 5529
    :sswitch_d
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 5530
    :sswitch_e
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 5531
    :sswitch_f
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 5532
    :sswitch_10
    const-string v0, "UDUB"

    goto :goto_0

    .line 5533
    :sswitch_11
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 5534
    :sswitch_12
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 5535
    :sswitch_13
    const-string v0, "VOICE_REGISTRATION_STATE"

    goto :goto_0

    .line 5536
    :sswitch_14
    const-string v0, "DATA_REGISTRATION_STATE"

    goto :goto_0

    .line 5537
    :sswitch_15
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 5538
    :sswitch_16
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 5539
    :sswitch_17
    const-string v0, "DTMF"

    goto :goto_0

    .line 5540
    :sswitch_18
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 5541
    :sswitch_19
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 5542
    :sswitch_1a
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 5543
    :sswitch_1b
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 5544
    :sswitch_1c
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 5545
    :sswitch_1d
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 5546
    :sswitch_1e
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 5547
    :sswitch_1f
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 5548
    :sswitch_20
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 5549
    :sswitch_21
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 5550
    :sswitch_22
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 5551
    :sswitch_23
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 5552
    :sswitch_24
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 5553
    :sswitch_25
    const-string v0, "GET_IMEI"

    goto :goto_0

    .line 5554
    :sswitch_26
    const-string v0, "GET_IMEISV"

    goto :goto_0

    .line 5555
    :sswitch_27
    const-string v0, "ANSWER"

    goto :goto_0

    .line 5556
    :sswitch_28
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto :goto_0

    .line 5557
    :sswitch_29
    const-string v0, "QUERY_FACILITY_LOCK"

    goto :goto_0

    .line 5558
    :sswitch_2a
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 5559
    :sswitch_2b
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 5560
    :sswitch_2c
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 5561
    :sswitch_2d
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 5562
    :sswitch_2e
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 5563
    :sswitch_2f
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 5564
    :sswitch_30
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 5565
    :sswitch_31
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 5566
    :sswitch_32
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 5567
    :sswitch_33
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 5568
    :sswitch_34
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 5569
    :sswitch_35
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 5570
    :sswitch_36
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 5571
    :sswitch_37
    const-string v0, "QUERY_CNAP"

    goto/16 :goto_0

    .line 5572
    :sswitch_38
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 5573
    :sswitch_39
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 5574
    :sswitch_3a
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 5575
    :sswitch_3b
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 5576
    :sswitch_3c
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 5577
    :sswitch_3d
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 5578
    :sswitch_3e
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 5579
    :sswitch_3f
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 5580
    :sswitch_40
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 5581
    :sswitch_41
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 5582
    :sswitch_42
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 5583
    :sswitch_43
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 5584
    :sswitch_44
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 5585
    :sswitch_45
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 5586
    :sswitch_46
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 5587
    :sswitch_47
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 5588
    :sswitch_48
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 5589
    :sswitch_49
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 5590
    :sswitch_4a
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 5591
    :sswitch_4b
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 5592
    :sswitch_4c
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 5593
    :sswitch_4d
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 5594
    :sswitch_4e
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 5595
    :sswitch_4f
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 5596
    :sswitch_50
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 5597
    :sswitch_51
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 5598
    :sswitch_52
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 5599
    :sswitch_53
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 5600
    :sswitch_54
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 5601
    :sswitch_55
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 5602
    :sswitch_56
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 5603
    :sswitch_57
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 5604
    :sswitch_58
    const-string v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 5605
    :sswitch_59
    const-string v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 5606
    :sswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 5607
    :sswitch_5b
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 5608
    :sswitch_5c
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 5609
    :sswitch_5d
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 5610
    :sswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 5611
    :sswitch_5f
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 5612
    :sswitch_60
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 5613
    :sswitch_61
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 5614
    :sswitch_62
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 5615
    :sswitch_63
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 5616
    :sswitch_64
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 5617
    :sswitch_65
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 5618
    :sswitch_66
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 5619
    :sswitch_67
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 5620
    :sswitch_68
    const-string v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    goto/16 :goto_0

    .line 5621
    :sswitch_69
    const-string v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 5622
    :sswitch_6a
    const-string v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    goto/16 :goto_0

    .line 5623
    :sswitch_6b
    const-string v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    goto/16 :goto_0

    .line 5624
    :sswitch_6c
    const-string v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    goto/16 :goto_0

    .line 5625
    :sswitch_6d
    const-string v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    goto/16 :goto_0

    .line 5626
    :sswitch_6e
    const-string v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    goto/16 :goto_0

    .line 5627
    :sswitch_6f
    const-string v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    goto/16 :goto_0

    .line 5628
    :sswitch_70
    const-string v0, "RIL_REQUEST_SET_DATA_PROFILE"

    goto/16 :goto_0

    .line 5629
    :sswitch_71
    const-string v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    goto/16 :goto_0

    .line 5630
    :sswitch_72
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS"

    goto/16 :goto_0

    .line 5631
    :sswitch_73
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    goto/16 :goto_0

    .line 5632
    :sswitch_74
    const-string v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    goto/16 :goto_0

    .line 5633
    :sswitch_75
    const-string v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    goto/16 :goto_0

    .line 5634
    :sswitch_76
    const-string v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    goto/16 :goto_0

    .line 5635
    :sswitch_77
    const-string v0, "RIL_REQUEST_NV_READ_ITEM"

    goto/16 :goto_0

    .line 5636
    :sswitch_78
    const-string v0, "RIL_REQUEST_NV_WRITE_ITEM"

    goto/16 :goto_0

    .line 5637
    :sswitch_79
    const-string v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    goto/16 :goto_0

    .line 5638
    :sswitch_7a
    const-string v0, "RIL_REQUEST_NV_RESET_CONFIG"

    goto/16 :goto_0

    .line 5639
    :sswitch_7b
    const-string v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    goto/16 :goto_0

    .line 5640
    :sswitch_7c
    const-string v0, "RIL_REQUEST_ALLOW_DATA"

    goto/16 :goto_0

    .line 5641
    :sswitch_7d
    const-string v0, "GET_HARDWARE_CONFIG"

    goto/16 :goto_0

    .line 5642
    :sswitch_7e
    const-string v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    goto/16 :goto_0

    .line 5643
    :sswitch_7f
    const-string v0, "RIL_REQUEST_SHUTDOWN"

    goto/16 :goto_0

    .line 5645
    :sswitch_80
    const-string v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    goto/16 :goto_0

    .line 5647
    :sswitch_81
    const-string v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    goto/16 :goto_0

    .line 5648
    :sswitch_82
    const-string v0, "RIL_REQUEST_START_LCE"

    goto/16 :goto_0

    .line 5649
    :sswitch_83
    const-string v0, "RIL_REQUEST_STOP_LCE"

    goto/16 :goto_0

    .line 5650
    :sswitch_84
    const-string v0, "RIL_REQUEST_PULL_LCEDATA"

    goto/16 :goto_0

    .line 5651
    :sswitch_85
    const-string v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    goto/16 :goto_0

    .line 5653
    :sswitch_86
    const-string v0, "DIAL_EMERGENCY_CALL"

    goto/16 :goto_0

    .line 5654
    :sswitch_87
    const-string v0, "CALL_DEFLECTION"

    goto/16 :goto_0

    .line 5655
    :sswitch_88
    const-string v0, "MODIFY_CALL_INITIATE"

    goto/16 :goto_0

    .line 5656
    :sswitch_89
    const-string v0, "MODIFY_CALL_CONFIRM"

    goto/16 :goto_0

    .line 5657
    :sswitch_8a
    const-string v0, "SET_VOICE_DOMAIN_PREF"

    goto/16 :goto_0

    .line 5658
    :sswitch_8b
    const-string v0, "SAFE_MODE"

    goto/16 :goto_0

    .line 5659
    :sswitch_8c
    const-string v0, "SET_TRANSMIT_POWER"

    goto/16 :goto_0

    .line 5660
    :sswitch_8d
    const-string v0, "GET_CELL_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 5661
    :sswitch_8e
    const-string v0, "GET_PHONEBOOK_STORAGE_INFO"

    goto/16 :goto_0

    .line 5662
    :sswitch_8f
    const-string v0, "GET_PHONEBOOK_ENTRY"

    goto/16 :goto_0

    .line 5663
    :sswitch_90
    const-string v0, "ACCESS_PHONEBOOK_ENTRY"

    goto/16 :goto_0

    .line 5664
    :sswitch_91
    const-string v0, "USIM_PB_CAPA"

    goto/16 :goto_0

    .line 5665
    :sswitch_92
    const-string v0, "LOCK_INFO"

    goto/16 :goto_0

    .line 5666
    :sswitch_93
    const-string v0, "STK_SIM_INIT_EVENT"

    goto/16 :goto_0

    .line 5667
    :sswitch_94
    const-string v0, "SET_PREFERRED_NETWORK_LIST"

    goto/16 :goto_0

    .line 5668
    :sswitch_95
    const-string v0, "GET_PREFERRED_NETWORK_LIST"

    goto/16 :goto_0

    .line 5669
    :sswitch_96
    const-string v0, "CHANGE_SIM_PERSO"

    goto/16 :goto_0

    .line 5670
    :sswitch_97
    const-string v0, "ENTER_SIM_PERSO"

    goto/16 :goto_0

    .line 5671
    :sswitch_98
    const-string v0, "SEND_ENCODED_USSD"

    goto/16 :goto_0

    .line 5672
    :sswitch_99
    const-string v0, "CDMA_SEND_SMS_EXPECT_MORE"

    goto/16 :goto_0

    .line 5673
    :sswitch_9a
    const-string v0, "HANGUP_VT"

    goto/16 :goto_0

    .line 5674
    :sswitch_9b
    const-string v0, "REQUEST_HOLD"

    goto/16 :goto_0

    .line 5675
    :sswitch_9c
    const-string v0, "SET_SIM_POWER"

    goto/16 :goto_0

    .line 5676
    :sswitch_9d
    const-string v0, "UICC_GBA_AUTHENTICATE_BOOTSTRAP"

    goto/16 :goto_0

    .line 5677
    :sswitch_9e
    const-string v0, "UICC_GBA_AUTHENTICATE_NAF"

    goto/16 :goto_0

    .line 5678
    :sswitch_9f
    const-string v0, "GET_INCOMING_COMMUNICATION_BARRING"

    goto/16 :goto_0

    .line 5679
    :sswitch_a0
    const-string v0, "SET_INCOMING_COMMUNICATION_BARRING"

    goto/16 :goto_0

    .line 5680
    :sswitch_a1
    const-string v0, "SET_TRANSFER_CALL"

    goto/16 :goto_0

    .line 5681
    :sswitch_a2
    const-string v0, "GET_DISABLE_2G"

    goto/16 :goto_0

    .line 5682
    :sswitch_a3
    const-string v0, "SET_DISABLE_2G"

    goto/16 :goto_0

    .line 5515
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_5d
        0x57 -> :sswitch_56
        0x58 -> :sswitch_57
        0x59 -> :sswitch_58
        0x5a -> :sswitch_59
        0x5b -> :sswitch_5c
        0x5c -> :sswitch_5a
        0x5d -> :sswitch_5b
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_65
        0x64 -> :sswitch_63
        0x65 -> :sswitch_64
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7a
        0x7a -> :sswitch_7b
        0x7b -> :sswitch_7c
        0x7c -> :sswitch_7d
        0x7d -> :sswitch_7e
        0x80 -> :sswitch_70
        0x81 -> :sswitch_7f
        0x82 -> :sswitch_81
        0x83 -> :sswitch_80
        0x84 -> :sswitch_82
        0x85 -> :sswitch_83
        0x86 -> :sswitch_84
        0x87 -> :sswitch_85
        0x2711 -> :sswitch_86
        0x2712 -> :sswitch_87
        0x2713 -> :sswitch_88
        0x2714 -> :sswitch_89
        0x2715 -> :sswitch_8a
        0x2716 -> :sswitch_8b
        0x2717 -> :sswitch_8c
        0x2718 -> :sswitch_8d
        0x2719 -> :sswitch_8e
        0x271a -> :sswitch_8f
        0x271b -> :sswitch_90
        0x271c -> :sswitch_91
        0x271d -> :sswitch_92
        0x271e -> :sswitch_93
        0x271f -> :sswitch_94
        0x2720 -> :sswitch_95
        0x2721 -> :sswitch_96
        0x2722 -> :sswitch_97
        0x2723 -> :sswitch_98
        0x2724 -> :sswitch_99
        0x2725 -> :sswitch_9a
        0x2726 -> :sswitch_9b
        0x2727 -> :sswitch_9c
        0x2729 -> :sswitch_9d
        0x272a -> :sswitch_9e
        0x272b -> :sswitch_9f
        0x272c -> :sswitch_a0
        0x272d -> :sswitch_37
        0x272e -> :sswitch_a1
        0x272f -> :sswitch_a2
        0x2730 -> :sswitch_a3
    .end sparse-switch
.end method

.method private responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x5

    .line 5372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5373
    .local v4, "sleepModeTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5374
    .local v5, "idleModeTimeMs":I
    new-array v6, v2, [I

    .line 5375
    .local v6, "txModeTimeMs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v6, v0

    .line 5375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5378
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5380
    .local v7, "rxModeTimeMs":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem activity info received: sleepModeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " idleModeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txModeTimeMs[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rxModeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5386
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    return-object v1
.end method

.method private responseBootstrap(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 7034
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7036
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "res"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 7037
    const-string v1, "auts"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 7039
    return-object v0
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4427
    .local v3, "numInfos":I
    new-array v2, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 4429
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 4430
    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v2, v1

    .line 4432
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 4433
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 4434
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 4435
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 4436
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 4437
    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 4438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4439
    .local v4, "startTime":Ljava/lang/String;
    aget-object v5, v2, v1

    if-nez v4, :cond_0

    const-string v4, ""

    .end local v4    # "startTime":Ljava/lang/String;
    :cond_0
    iput-object v4, v5, Lcom/android/internal/telephony/CallForwardInfo;->startTime:Ljava/lang/String;

    .line 4440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4441
    .local v0, "endTime":Ljava/lang/String;
    aget-object v5, v2, v1

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "endTime":Ljava/lang/String;
    :cond_1
    iput-object v0, v5, Lcom/android/internal/telephony/CallForwardInfo;->endTime:Ljava/lang/String;

    .line 4429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4444
    :cond_2
    return-object v2
.end method

.method private responseCallModify(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5462
    new-instance v2, Lcom/android/internal/telephony/CallModify;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallModify;-><init>()V

    .line 5466
    .local v2, "response":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/CallModify;->call_index:I

    .line 5468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5469
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5470
    .local v0, "domain":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5472
    .local v1, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/CallDetails;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    iput-object v4, v2, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    .line 5473
    iget-object v4, v2, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/CallDetails;->setExtrasFromCsv(Ljava/lang/String;)V

    .line 5475
    return-object v2
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5206
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 5208
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 5209
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 5210
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 5211
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 5213
    return-object v0
.end method

.method private responseCbSettings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .param p1, "P"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, 0x1

    .line 5397
    const/4 v2, 0x0

    .line 5398
    .local v2, "Enabled":I
    const/4 v5, 0x0

    .line 5399
    .local v5, "i":I
    const/4 v6, 0x0

    .line 5402
    .local v6, "j":I
    const/4 v7, 0x0

    .line 5403
    .local v7, "lsb":I
    const/4 v8, 0x0

    .line 5404
    .local v8, "msb":I
    const/16 v3, 0x64

    .line 5406
    .local v3, "NETTEXT_GSM_SMS_CBMI_LIST_SIZE_MAX":I
    new-instance v4, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v4}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 5408
    .local v4, "cb":Landroid/telephony/gsm/CbConfig;
    const-string v10, "RILJ"

    const-string v11, "responseCbSettings"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5412
    if-ne v2, v12, :cond_3

    .line 5413
    iput-boolean v12, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 5417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v10, v10

    iput-char v10, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 5418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v10, v10

    iput-char v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 5419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 5421
    iget-char v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    if-lez v10, :cond_4

    .line 5422
    iget-char v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    mul-int/lit8 v10, v10, 0x2

    new-array v0, v10, [B

    .line 5427
    .local v0, "Cbmid_List":[B
    :goto_1
    iget v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-le v10, v3, :cond_1

    .line 5428
    const-string v10, "RILJ"

    const-string v11, "No of CBMID Exceeded "

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_1
    iget v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v9, v10, [S

    .line 5432
    .local v9, "msgIDs":[S
    iput-object v9, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 5434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5436
    .local v1, "Cbmid_Str":Ljava/lang/String;
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ENABLED:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", selectedId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-char v12, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", msgIdCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", msgIdMaxCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-char v12, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    if-nez v1, :cond_5

    .line 5440
    const-string v10, "RILJ"

    const-string v11, "MessageIDs String is NULL"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    :cond_2
    return-object v4

    .line 5414
    .end local v0    # "Cbmid_List":[B
    .end local v1    # "Cbmid_Str":Ljava/lang/String;
    .end local v9    # "msgIDs":[S
    :cond_3
    const/4 v10, 0x2

    if-ne v2, v10, :cond_0

    .line 5415
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto/16 :goto_0

    .line 5424
    :cond_4
    new-array v0, v3, [B

    .restart local v0    # "Cbmid_List":[B
    goto :goto_1

    .line 5442
    .restart local v1    # "Cbmid_Str":Ljava/lang/String;
    .restart local v9    # "msgIDs":[S
    :cond_5
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", MessageIDs:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 5446
    const/4 v5, 0x0

    :goto_2
    iget v10, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v5, v10, :cond_2

    .line 5447
    aget-byte v10, v0, v6

    and-int/lit16 v7, v10, 0xff

    .line 5448
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v8, v10, 0xff

    .line 5451
    iget-object v10, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    shl-int/lit8 v11, v7, 0x8

    or-int/2addr v11, v8

    int-to-short v11, v11

    aput-short v11, v10, v5

    .line 5452
    add-int/lit8 v6, v6, 0x2

    .line 5446
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 5105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5107
    .local v2, "numServiceCategories":I
    if-nez v2, :cond_0

    .line 5112
    const/16 v1, 0x5e

    .line 5113
    .local v1, "numInts":I
    new-array v3, v1, [I

    .line 5116
    .local v3, "response":[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 5120
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5121
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 5122
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 5123
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 5120
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 5127
    .end local v0    # "i":I
    .end local v1    # "numInts":I
    .end local v3    # "response":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 5128
    .restart local v1    # "numInts":I
    new-array v3, v1, [I

    .line 5130
    .restart local v3    # "response":[I
    aput v2, v3, v6

    .line 5131
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 5131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5136
    :cond_1
    return-object v3
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5157
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5159
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 5160
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 5161
    .local v0, "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5164
    .end local v0    # "InfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4473
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 4475
    .local v0, "sms":Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5273
    .local v2, "numberOfInfoRecs":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5275
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 5276
    sget-object v4, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 5277
    .local v0, "InfoRec":Landroid/telephony/CellInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5280
    .end local v0    # "InfoRec":Landroid/telephony/CellInfo;
    :cond_0
    return-object v3
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5043
    .local v3, "num":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5046
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    .line 5047
    .local v7, "subId":[I
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v4

    .line 5052
    .local v4, "radioType":I
    if-eqz v4, :cond_0

    .line 5053
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 5054
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 5055
    .local v6, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5056
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 5057
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5060
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v6    # "rssi":I
    :cond_0
    return-object v5
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4840
    .local v3, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4841
    .local v1, "num":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseDataCallList ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4844
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4845
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4848
    :cond_0
    return-object v2
.end method

.method private responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4406
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 4407
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 4408
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_0

    .line 4409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 4411
    :cond_0
    return-object v0
.end method

.method private responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5064
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 5066
    .local v0, "response":[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 5070
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 5072
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->setInitialPhoneType(I)V

    .line 5075
    :cond_0
    return-object v0
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    .line 5083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5084
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 5086
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 5087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5088
    .local v1, "fromId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5089
    .local v2, "toId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5090
    .local v3, "fromScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5091
    .local v4, "toScheme":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v9, :cond_0

    move v5, v9

    .line 5093
    .local v5, "selected":Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 5095
    .local v0, "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5086
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5091
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 5097
    .end local v1    # "fromId":I
    .end local v2    # "toId":I
    .end local v3    # "fromScheme":I
    .end local v4    # "toScheme":I
    :cond_1
    return-object v8
.end method

.method private responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 5290
    .local v9, "num":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 5295
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 5296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 5297
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    .line 5310
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5299
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5300
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 5315
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5295
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5305
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 5306
    .restart local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 5318
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v11    # "type":I
    :cond_0
    return-object v10

    .line 5297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4538
    .local v2, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4540
    .local v3, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4543
    .local v1, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< iccIO:  0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4546
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v4, :cond_0

    .line 4547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4553
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v4
.end method

.method private responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4562
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4564
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4571
    .local v0, "s":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    :goto_0
    invoke-direct {v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-object v4

    :cond_0
    const/4 v3, 0x0

    check-cast v3, [B

    goto :goto_0
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4579
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 4580
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 4583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4588
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 4589
    const/16 v3, 0x8

    .line 4591
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 4592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4593
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4594
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 4600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    .line 4604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    .line 4605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    .line 4606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    .line 4607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    .line 4609
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 4592
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4611
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4395
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 4397
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 4397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4401
    :cond_0
    return-object v2
.end method

.method private responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5343
    .local v1, "capacityResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5344
    .local v0, "capacityDownKbps":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 5345
    .local v2, "confidenceLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 5347
    .local v3, "lceSuspended":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCE capacity information received: capacity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " confidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lceSuspended="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5355
    return-object v1
.end method

.method private responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5360
    .local v2, "statusResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 5361
    .local v1, "lceStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5363
    .local v0, "actualInterval":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCE status information received: lceStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actualInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5368
    return-object v2
.end method

.method private responseNaf(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 7043
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4909
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 4932
    .local v13, "strings":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_NetworkInfoRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4958
    array-length v0, v13

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_2

    .line 4959
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strings, expected multible of 6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4937
    :cond_0
    array-length v0, v13

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    .line 4938
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strings, expected multible of 6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4943
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    array-length v0, v13

    div-int/lit8 v0, v0, 0x6

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4944
    .local v10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v13

    if-ge v7, v0, :cond_b

    .line 4945
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v1, v7, 0x0

    aget-object v1, v13, v1

    add-int/lit8 v2, v7, 0x1

    aget-object v2, v13, v2

    add-int/lit8 v3, v7, 0x2

    aget-object v3, v13, v3

    add-int/lit8 v4, v7, 0x3

    aget-object v4, v13, v4

    add-int/lit8 v5, v7, 0x4

    aget-object v5, v13, v5

    add-int/lit8 v6, v7, 0x5

    aget-object v6, v13, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4954
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add OperatorInfo is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x2

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x3

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x4

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x5

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_0

    .line 4964
    .end local v7    # "i":I
    .end local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    array-length v0, v13

    div-int/lit8 v0, v0, 0x6

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4966
    .restart local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    new-instance v9, Ljava/util/HashSet;

    array-length v0, v13

    div-int/lit8 v0, v0, 0x6

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4969
    .local v9, "mccmnc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4970
    .local v11, "sim_numeric":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "gsm.sim.operator.alpha"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4971
    .local v12, "spn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "gsm.operator.isroaming"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4973
    .local v8, "isRoaming":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v0, v13

    if-ge v7, v0, :cond_b

    .line 4975
    add-int/lit8 v0, v7, 0x2

    aget-object v0, v13, v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4973
    :goto_2
    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    .line 4978
    :cond_3
    add-int/lit8 v0, v7, 0x2

    aget-object v0, v13, v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4983
    const-string v0, "45400"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "45402"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "45410"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "45418"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4985
    :cond_4
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSL Network, SPN sholud be displayed instead of PLMN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SPN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    const-string v0, "45400"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "45402"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "45410"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "45418"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4987
    :cond_5
    add-int/lit8 v0, v7, 0x0

    aput-object v12, v13, v0

    .line 4988
    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v7, 0x0

    aget-object v1, v13, v1

    aput-object v1, v13, v0

    .line 4996
    :cond_6
    const-string v0, "45416"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "45419"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4998
    :cond_7
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCCW-HKT Network, SPN sholud be displayed instead of PLMN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SPN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    const-string v0, "45416"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "45419"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5000
    :cond_8
    add-int/lit8 v0, v7, 0x0

    aput-object v12, v13, v0

    .line 5001
    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v7, 0x0

    aget-object v1, v13, v1

    aput-object v1, v13, v0

    .line 5007
    :cond_9
    const-string v0, "46697"

    add-int/lit8 v1, v7, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5009
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APT Network, SPN sholud be displayed instead of PLMN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SPN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    const-string v0, "46605"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5011
    add-int/lit8 v0, v7, 0x0

    aput-object v12, v13, v0

    .line 5012
    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v7, 0x0

    aget-object v1, v13, v1

    aput-object v1, v13, v0

    .line 5016
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v1, v7, 0x0

    aget-object v1, v13, v1

    add-int/lit8 v2, v7, 0x1

    aget-object v2, v13, v2

    add-int/lit8 v3, v7, 0x2

    aget-object v3, v13, v3

    add-int/lit8 v4, v7, 0x3

    aget-object v4, v13, v4

    add-int/lit8 v5, v7, 0x4

    aget-object v5, v13, v5

    add-int/lit8 v6, v7, 0x5

    aget-object v6, v13, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5025
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add OperatorInfo is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x2

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x3

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x4

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x5

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5032
    .end local v8    # "isRoaming":Ljava/lang/String;
    .end local v9    # "mccmnc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "sim_numeric":Ljava/lang/String;
    .end local v12    # "spn":Ljava/lang/String;
    :cond_b
    return-object v10
.end method

.method private responsePreferredNetworkList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5489
    .local v1, "num":I
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of network list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5492
    .local v3, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PreferredNetworkListInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5494
    new-instance v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>()V

    .line 5495
    .local v2, "preferredNetwork":Lcom/android/internal/telephony/PreferredNetworkListInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mIndex:I

    .line 5496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    .line 5497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mPlmn:Ljava/lang/String;

    .line 5498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmAct:I

    .line 5499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mGsmCompactAct:I

    .line 5500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mUtranAct:I

    .line 5501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mMode:I

    .line 5502
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5504
    .end local v2    # "preferredNetwork":Lcom/android/internal/telephony/PreferredNetworkListInfo;
    :cond_0
    return-object v3
.end method

.method private responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5324
    .local v7, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5325
    .local v2, "session":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5326
    .local v3, "phase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5327
    .local v4, "rat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 5328
    .local v5, "logicModemUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 5330
    .local v6, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseRadioCapability: version= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", session="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", phase="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", rat="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", logicModemUuid="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", status="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5336
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 5338
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    return-object v0
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4502
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 4504
    .local v0, "response":[B
    return-object v0
.end method

.method private responseSIM_LockInfo(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 6855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6856
    .local v2, "num_lock_type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6857
    .local v1, "lock_type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6858
    .local v0, "lock_key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6860
    .local v3, "num_of_retry":I
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lock_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lock_key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " num_of_retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    return-object v4
.end method

.method private responseSIM_PB(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x5

    const/4 v0, 0x3

    const/4 v11, 0x0

    .line 6811
    new-array v1, v0, [I

    .line 6812
    .local v1, "lengthAlphas":[I
    new-array v2, v0, [I

    .line 6813
    .local v2, "dataTypeAlphas":[I
    new-array v3, v0, [Ljava/lang/String;

    .line 6815
    .local v3, "alphaTags":[Ljava/lang/String;
    new-array v4, v9, [I

    .line 6816
    .local v4, "lengthNumbers":[I
    new-array v5, v9, [I

    .line 6817
    .local v5, "dataTypeNumbers":[I
    new-array v6, v9, [Ljava/lang/String;

    .line 6822
    .local v6, "numbers":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 6823
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 6825
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 6826
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alphaTag is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6827
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SNE is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6828
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v0, :cond_2

    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "email is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 6831
    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lengthNumber is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6833
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 6835
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 6836
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v0, :cond_3

    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6837
    :cond_3
    sget-boolean v0, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v0, :cond_4

    const-string v0, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ANR is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6839
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 6840
    .local v7, "recordIndex":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 6842
    .local v8, "nextIndex":I
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4513
    .local v3, "messageRef":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4514
    .local v0, "ackPDU":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4518
    .local v2, "errorCode":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SmsErrorClassRetry"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4521
    .local v1, "errorClass":I
    new-instance v4, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v4, v3, v0, v2, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 4525
    .end local v1    # "errorClass":I
    .local v4, "response":Lcom/android/internal/telephony/SmsResponse;
    :goto_0
    return-object v4

    .line 4523
    .end local v4    # "response":Lcom/android/internal/telephony/SmsResponse;
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v4, v3, v0, v2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .restart local v4    # "response":Lcom/android/internal/telephony/SmsResponse;
    goto :goto_0
.end method

.method private responseSSReleaseCompleteNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 6765
    new-instance v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 6766
    .local v0, "notification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    const-string v1, "RILJ"

    const-string v2, "responseSSReleaseCompleteNotification()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->size:I

    .line 6769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    .line 6770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    .line 6771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    .line 6772
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    .line 6773
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification.data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6775
    return-object v0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5143
    invoke-static {p1}, Landroid/telephony/SignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 5144
    .local v0, "signalStrength":Landroid/telephony/SignalStrength;
    return-object v0
.end method

.method private responseSimPowerDone(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 6869
    const-string v3, "RILJ"

    const-string v4, "ResponseSimPowerDone"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6879
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 6880
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 6880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6883
    :cond_0
    const-string v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResponseSimPowerDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6886
    aget v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method private responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4616
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 4618
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 4619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 4624
    return-object v0
.end method

.method private responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5813
    new-instance v2, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 5815
    .local v2, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 5816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 5817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 5818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 5819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 5820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5822
    .local v1, "num":I
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5824
    new-array v3, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 5826
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5827
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v3, v0

    .line 5829
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 5830
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 5831
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 5832
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 5833
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 5834
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 5836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SS Data] CF Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5839
    .end local v0    # "i":I
    :cond_0
    new-array v3, v1, [I

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    .line 5840
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5841
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 5842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SS Data] SS Info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5846
    :cond_1
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4484
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4492
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 4494
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4449
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4451
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 4452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 4454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 4456
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->mtConference:I

    .line 4457
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4460
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->mtConference:I

    .line 4465
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 4467
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 5696
    sparse-switch p0, :sswitch_data_0

    .line 5780
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 5697
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 5698
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 5699
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 5700
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 5701
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 5702
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 5703
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 5704
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 5705
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 5706
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 5707
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 5708
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 5709
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 5710
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 5711
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 5712
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 5713
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 5714
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 5715
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 5716
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 5717
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 5718
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 5719
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 5720
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 5721
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 5722
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 5723
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 5724
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 5725
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 5726
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 5727
    :sswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 5728
    :sswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 5729
    :sswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 5730
    :sswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 5731
    :sswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 5732
    :sswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 5733
    :sswitch_24
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 5735
    :sswitch_25
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 5737
    :sswitch_26
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    goto :goto_0

    .line 5739
    :sswitch_27
    const-string v0, "UNSOL_SRVCC_STATE_NOTIFY"

    goto :goto_0

    .line 5740
    :sswitch_28
    const-string v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    goto :goto_0

    .line 5742
    :sswitch_29
    const-string v0, "RIL_UNSOL_RADIO_CAPABILITY"

    goto :goto_0

    .line 5743
    :sswitch_2a
    const-string v0, "UNSOL_ON_SS"

    goto/16 :goto_0

    .line 5744
    :sswitch_2b
    const-string v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    goto/16 :goto_0

    .line 5745
    :sswitch_2c
    const-string v0, "UNSOL_LCE_INFO_RECV"

    goto/16 :goto_0

    .line 5747
    :sswitch_2d
    const-string v0, "UNSOL_RESPONSE_NEW_CB_MSG"

    goto/16 :goto_0

    .line 5748
    :sswitch_2e
    const-string v0, "UNSOL_RELEASE_COMPLETE_MESSAGE"

    goto/16 :goto_0

    .line 5749
    :sswitch_2f
    const-string v0, "UNSOL_STK_SEND_SMS_RESULT"

    goto/16 :goto_0

    .line 5750
    :sswitch_30
    const-string v0, "UNSOL_STK_CALL_CONTROL_RESULT"

    goto/16 :goto_0

    .line 5751
    :sswitch_31
    const-string v0, "UNSOL_DEVICE_READY_NOTI"

    goto/16 :goto_0

    .line 5752
    :sswitch_32
    const-string v0, "UNSOL_GPS_NOTI"

    goto/16 :goto_0

    .line 5753
    :sswitch_33
    const-string v0, "UNSOL_AM"

    goto/16 :goto_0

    .line 5754
    :sswitch_34
    const-string v0, "UNSOL_SAP"

    goto/16 :goto_0

    .line 5755
    :sswitch_35
    const-string v0, "UNSOL_UART"

    goto/16 :goto_0

    .line 5756
    :sswitch_36
    const-string v0, "UNSOL_SIM_PB_READY"

    goto/16 :goto_0

    .line 5757
    :sswitch_37
    const-string v0, "UNSOL_VE"

    goto/16 :goto_0

    .line 5758
    :sswitch_38
    const-string v0, "UNSOL_FACTORY_AM"

    goto/16 :goto_0

    .line 5759
    :sswitch_39
    const-string v0, "UNSOL_IMS_REGISTRATION_STATE_CHANGED"

    goto/16 :goto_0

    .line 5760
    :sswitch_3a
    const-string v0, "UNSOL_MODIFY_CALL"

    goto/16 :goto_0

    .line 5761
    :sswitch_3b
    const-string v0, "UNSOL_CS_FALLBACK"

    goto/16 :goto_0

    .line 5762
    :sswitch_3c
    const-string v0, "UNSOL_VOICE_SYSTEM_ID"

    goto/16 :goto_0

    .line 5763
    :sswitch_3d
    const-string v0, "UNSOL_IMS_RETRYOVER"

    goto/16 :goto_0

    .line 5764
    :sswitch_3e
    const-string v0, "UNSOL_PB_INIT_COMPLETE"

    goto/16 :goto_0

    .line 5765
    :sswitch_3f
    const-string v0, "UNSOL_HYSTERESIS_DCN"

    goto/16 :goto_0

    .line 5766
    :sswitch_40
    const-string v0, "UNSOL_CP_POSITION"

    goto/16 :goto_0

    .line 5767
    :sswitch_41
    const-string v0, "UNSOL_HOME_NETWORK_NOTI"

    goto/16 :goto_0

    .line 5768
    :sswitch_42
    const-string v0, "UNSOL_STK_CALL_STATUS"

    goto/16 :goto_0

    .line 5769
    :sswitch_43
    const-string v0, "UNSOL_MODEM_CAP"

    goto/16 :goto_0

    .line 5770
    :sswitch_44
    const-string v0, "UNSOL_SIM_SWAP_STATE_CHANGED"

    goto/16 :goto_0

    .line 5771
    :sswitch_45
    const-string v0, "UNSOL_SIM_COUNT_MISMATCHED"

    goto/16 :goto_0

    .line 5772
    :sswitch_46
    const-string v0, "UNSOL_DUN"

    goto/16 :goto_0

    .line 5773
    :sswitch_47
    const-string v0, "UNSOL_IMS_PREFERENCE_CHANGED"

    goto/16 :goto_0

    .line 5774
    :sswitch_48
    const-string v0, "UNSOL_SIM_APPLICATION_REFRESH"

    goto/16 :goto_0

    .line 5775
    :sswitch_49
    const-string v0, "UNSOL_UICC_APPLICATION_STATUS"

    goto/16 :goto_0

    .line 5776
    :sswitch_4a
    const-string v0, "UNSOL_VOICE_RADIO_BEARER_HO_STATUS"

    goto/16 :goto_0

    .line 5777
    :sswitch_4b
    const-string v0, "UNSOL_CLM_NOTI"

    goto/16 :goto_0

    .line 5778
    :sswitch_4c
    const-string v0, "UNSOL_SIM_ICCID_NOTI"

    goto/16 :goto_0

    .line 5696
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0x40c -> :sswitch_24
        0x40d -> :sswitch_25
        0x40e -> :sswitch_26
        0x40f -> :sswitch_27
        0x410 -> :sswitch_28
        0x412 -> :sswitch_29
        0x413 -> :sswitch_2a
        0x414 -> :sswitch_2b
        0x415 -> :sswitch_2c
        0x2af8 -> :sswitch_2d
        0x2af9 -> :sswitch_2e
        0x2afa -> :sswitch_2f
        0x2afb -> :sswitch_30
        0x2b00 -> :sswitch_31
        0x2b01 -> :sswitch_32
        0x2b02 -> :sswitch_33
        0x2b05 -> :sswitch_34
        0x2b0c -> :sswitch_35
        0x2b0d -> :sswitch_36
        0x2b10 -> :sswitch_37
        0x2b12 -> :sswitch_38
        0x2b13 -> :sswitch_39
        0x2b14 -> :sswitch_3a
        0x2b16 -> :sswitch_3b
        0x2b18 -> :sswitch_3c
        0x2b1a -> :sswitch_3d
        0x2b1b -> :sswitch_3e
        0x2b1d -> :sswitch_3f
        0x2b1e -> :sswitch_40
        0x2b23 -> :sswitch_41
        0x2b2e -> :sswitch_42
        0x2b30 -> :sswitch_43
        0x2b31 -> :sswitch_44
        0x2b32 -> :sswitch_45
        0x2b34 -> :sswitch_46
        0x2b35 -> :sswitch_47
        0x2b36 -> :sswitch_48
        0x2b37 -> :sswitch_49
        0x2b38 -> :sswitch_4a
        0x2b39 -> :sswitch_4b
        0x2b3a -> :sswitch_4c
    .end sparse-switch
.end method

.method private responseUSSD(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 6781
    const/4 v3, 0x0

    .line 6782
    .local v3, "num":I
    const/4 v0, 0x0

    .line 6785
    .local v0, "dcs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6788
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseUSSD - num "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    new-array v4, v3, [Ljava/lang/String;

    .line 6791
    .local v4, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 6792
    const/16 v6, 0x94

    if-ne v0, v6, :cond_0

    if-lez v2, :cond_0

    .line 6793
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 6795
    .local v5, "str":[B
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "EUC_KR"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v6, v4, v2

    .line 6796
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseUSSD :: USSD_DCS_KS5601, response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6791
    .end local v5    # "str":[B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6797
    .restart local v5    # "str":[B
    :catch_0
    move-exception v1

    .line 6798
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    aput-object v6, v4, v2

    goto :goto_1

    .line 6801
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "str":[B
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    goto :goto_1

    .line 6805
    :cond_1
    return-object v4
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4416
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 21
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 3450
    if-nez p1, :cond_1

    const-string v15, ""

    .line 3601
    .end local p1    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v15

    .line 3451
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 3500
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, [I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 3501
    check-cast p1, [I

    .end local p1    # "ret":Ljava/lang/Object;
    move-object/from16 v13, p1

    check-cast v13, [I

    .line 3502
    .local v13, "intArray":[I
    array-length v14, v13

    .line 3503
    .local v14, "length":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3504
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-lez v14, :cond_4

    .line 3505
    const/4 v10, 0x0

    .line 3506
    .local v10, "i":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    aget v18, v13, v10

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3507
    :goto_1
    if-ge v11, v14, :cond_4

    .line 3508
    const-string v18, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget v19, v13, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .line 3459
    .end local v11    # "i":I
    .end local v13    # "intArray":[I
    .end local v14    # "length":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :sswitch_0
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_2

    .line 3460
    const-string v15, ""

    goto :goto_0

    .line 3473
    :sswitch_1
    const-string v15, ""

    goto :goto_0

    .line 3478
    :sswitch_2
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_2

    .line 3479
    const-string v15, "{xx,xx,xx,xx,xx}"

    goto :goto_0

    .line 3485
    :sswitch_3
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_3

    .line 3486
    const-string v15, "{xx,xx,xx,xx}"

    goto :goto_0

    .line 3491
    :cond_3
    :sswitch_4
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_2

    .line 3492
    const-string v15, "{xx,xx,xx,xx,xx}"

    goto :goto_0

    .line 3511
    .end local p1    # "ret":Ljava/lang/Object;
    .restart local v13    # "intArray":[I
    .restart local v14    # "length":I
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3513
    .local v15, "s":Ljava/lang/String;
    goto :goto_0

    .end local v13    # "intArray":[I
    .end local v14    # "length":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3514
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object/from16 v17, p1

    check-cast v17, [Ljava/lang/String;

    .line 3515
    .local v17, "strings":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v14, v0

    .line 3516
    .restart local v14    # "length":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3517
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    if-lez v14, :cond_6

    .line 3518
    const/4 v10, 0x0

    .line 3519
    .restart local v10    # "i":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-object v18, v17, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    :goto_2
    if-ge v11, v14, :cond_6

    .line 3521
    const-string v18, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-object v19, v17, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .line 3524
    .end local v11    # "i":I
    :cond_6
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3526
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v14    # "length":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "strings":[Ljava/lang/String;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_7
    const/16 v18, 0x9

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v3, p1

    .line 3527
    check-cast v3, Ljava/util/ArrayList;

    .line 3528
    .local v3, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3529
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 3530
    .local v7, "dc":Lcom/android/internal/telephony/DriverCall;
    const-string v18, "["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3532
    .end local v7    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_8
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3534
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v3    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    const/16 v18, 0x4b

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v5, p1

    .line 3535
    check-cast v5, Ljava/util/ArrayList;

    .line 3536
    .local v5, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3537
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 3538
    .local v4, "cell":Landroid/telephony/NeighboringCellInfo;
    const-string v18, "["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3540
    .end local v4    # "cell":Landroid/telephony/NeighboringCellInfo;
    :cond_a
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3542
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v5    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    const/16 v18, 0x21

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 3543
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object/from16 v6, p1

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3544
    .local v6, "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v14, v6

    .line 3545
    .restart local v14    # "length":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3546
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    if-ge v10, v14, :cond_c

    .line 3547
    const-string v18, "["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v6, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3549
    :cond_c
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3551
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v6    # "cinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_d
    const/16 v18, 0x7c

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v9, p1

    .line 3552
    check-cast v9, Ljava/util/ArrayList;

    .line 3553
    .local v9, "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3554
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/HardwareConfig;

    .line 3555
    .local v8, "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    const-string v18, "["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3557
    .end local v8    # "hwcfg":Lcom/android/internal/telephony/HardwareConfig;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3559
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .end local v9    # "hwcfgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    const/16 v18, 0x3b

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 3560
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3561
    .restart local v15    # "s":Ljava/lang/String;
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 3562
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 3566
    .end local v15    # "s":Ljava/lang/String;
    :cond_10
    const/16 v18, 0x21

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 3567
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object/from16 v2, p1

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3568
    .local v2, "CFinfos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v14, v2

    .line 3569
    .restart local v14    # "length":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3570
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    sget-boolean v18, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v18, :cond_13

    .line 3571
    if-lez v14, :cond_14

    .line 3572
    const/4 v10, 0x0

    .line 3573
    .restart local v10    # "i":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-object v18, v2, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 3574
    const-string v18, " active "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    :goto_7
    if-ge v11, v14, :cond_14

    .line 3579
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-object v18, v2, v11

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 3580
    const-string v18, "] ["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " active "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_7

    .line 3576
    :cond_11
    const-string v18, " not active "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3582
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_12
    const-string v18, "] ["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not active "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_7

    .line 3587
    .end local v11    # "i":I
    :cond_13
    if-lez v14, :cond_14

    .line 3588
    const/4 v10, 0x0

    .line 3589
    .restart local v10    # "i":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-object v18, v2, v10

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    :goto_8
    if-ge v11, v14, :cond_14

    .line 3591
    const-string v18, "] ["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-object v19, v2, v11

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_8

    .line 3595
    .end local v11    # "i":I
    :cond_14
    const-string v18, "]"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3598
    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 3599
    .end local v2    # "CFinfos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v14    # "length":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "s":Ljava/lang/String;
    goto/16 :goto_0

    .line 3451
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x16 -> :sswitch_3
        0x26 -> :sswitch_1
        0x27 -> :sswitch_1
        0x5f -> :sswitch_4
        0x62 -> :sswitch_2
        0x69 -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_1
        0x75 -> :sswitch_1
        0x3f5 -> :sswitch_0
        0x3f6 -> :sswitch_0
        0x3f7 -> :sswitch_0
        0x403 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 5785
    const-string v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    return-void

    .line 5785
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 5790
    const-string v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5792
    return-void

    .line 5790
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private sendSafemode(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1294
    const/16 v3, 0x2716

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1296
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1303
    return-void

    :cond_0
    move v1, v2

    .line 1297
    goto :goto_0
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2864
    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2865
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2872
    return-void

    .line 2866
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setInitialPhoneType(I)V
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 6892
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v0

    .line 6893
    .local v0, "phoneType":I
    iget v1, p0, Lcom/android/internal/telephony/RIL;->initPhoneType:I

    if-eq v0, v1, :cond_0

    .line 6894
    const-string v1, "persist.radio.initphone-type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6895
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial PhoneType is changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RIL;->initPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    iput v0, p0, Lcom/android/internal/telephony/RIL;->initPhoneType:I

    .line 6898
    :cond_0
    return-void
.end method

.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 7
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 2929
    .local v3, "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 2930
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2931
    .local v4, "salesCode":Ljava/lang/String;
    const-string v5, "persist.sys.bpmsetting.default"

    const-string v6, "FirstTime"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2932
    .local v1, "isBpmFirstTime":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "COL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    const-string v5, "FirstTime"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2933
    const-string v5, "persist.sys.bpmsetting.enable"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    const-string v5, "persist.sys.bpmsetting.default"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    const-string v5, "CHN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CHC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CHU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CHM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CTC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "BRI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "TGY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CWT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "FET"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "TWM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CHZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "Combination"

    const-string v6, "Strawberry"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2942
    const/4 v5, 0x5

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .line 2944
    .local v0, "RAW_HOOK_OEM_CMD_BPM_ENABLE_QC_EVOLUTION":[B
    const-string v5, "persist.sys.bpmsetting.enable"

    const-string v6, "X"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2945
    .local v2, "isBpminit":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, "X"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2946
    const-string v5, "init Bpm"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2947
    const-string v5, "persist.sys.bpmsetting.enable"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/RIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2953
    .end local v0    # "RAW_HOOK_OEM_CMD_BPM_ENABLE_QC_EVOLUTION":[B
    .end local v2    # "isBpminit":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 2950
    .restart local v0    # "RAW_HOOK_OEM_CMD_BPM_ENABLE_QC_EVOLUTION":[B
    .restart local v2    # "isBpminit":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init Bpm before set : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2942
    :array_0
    .array-data 1
        0x2t
        0x60t
        0x0t
        0x5t
        0x5t
    .end array-data
.end method

.method private testingETWS(Landroid/telephony/SmsMessage;)V
    .locals 9
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v8, 0x0

    .line 7170
    const-string v6, "3000110011010D0A5BAE57CE770C531790E85C716CBF3044573065B9306757309707767A751F30025F37304463FA308C306B509930483066"

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 7173
    .local v1, "testID_1_1100":[B
    const-string v6, "2000110011010D0A5BAE57CE770C531790E85C716CBF3044573065B9306757309707767A751F30025F37304463FA308C306B509930483066"

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 7176
    .local v2, "testID_2_1100":[B
    const-string v6, "1000110011010D0A5BAE57CE770C531790E85C716CBF3044573065B9306757309707767A751F30025F37304463FA308C306B509930483066"

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 7179
    .local v3, "testID_3_1100":[B
    const-string v6, "4000110011010D0A5BAE57CE770C531790E85C716CBF3044573065B9306757309707767A751F30025F37304463FA308C306B509930483066"

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 7183
    .local v4, "testID_4_1100":[B
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7186
    .local v0, "Id":I
    const-string v6, "testingETWS"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7188
    sparse-switch v0, :sswitch_data_0

    .line 7212
    :cond_0
    :goto_0
    return-void

    .line 7190
    :sswitch_0
    move-object v5, v1

    .line 7208
    .local v5, "tmp":[B
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_0

    .line 7209
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v8, v5, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 7194
    .end local v5    # "tmp":[B
    :sswitch_1
    move-object v5, v2

    .line 7195
    .restart local v5    # "tmp":[B
    goto :goto_1

    .line 7198
    .end local v5    # "tmp":[B
    :sswitch_2
    move-object v5, v3

    .line 7199
    .restart local v5    # "tmp":[B
    goto :goto_1

    .line 7202
    .end local v5    # "tmp":[B
    :sswitch_3
    move-object v5, v4

    .line 7203
    .restart local v5    # "tmp":[B
    goto :goto_1

    .line 7188
    :sswitch_data_0
    .sparse-switch
        0x2b5c -> :sswitch_0
        0x526c -> :sswitch_1
        0x797c -> :sswitch_2
        0xa08c -> :sswitch_3
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 1927
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1939
    :goto_0
    :pswitch_0
    return v0

    .line 1931
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1933
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1935
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 5795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5796
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 5799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5800
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 5803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5804
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 5807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 5808
    return-void
.end method

.method private updateScreenState()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2848
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 2849
    .local v0, "oldState":I
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    .line 2854
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    if-eq v1, v0, :cond_0

    .line 2859
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRadioScreenState:I

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    .line 2861
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2849
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2859
    goto :goto_1
.end method


# virtual methods
.method public acceptCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1504
    const/16 v1, 0x28

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1509
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1511
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1516
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1498
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->acceptCall(ILandroid/os/Message;)V

    .line 1499
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 27
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "index"    # I
    .param p4, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 6386
    const/16 v25, 0x271b

    move/from16 v0, v25

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v23

    .line 6388
    .local v23, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6390
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 6391
    .local v2, "alphTag":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 6392
    .local v22, "number":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v15, v25, v26

    .line 6393
    .local v15, "email":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    .line 6394
    .local v3, "anr":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    .line 6395
    .local v4, "anrA":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    .line 6396
    .local v5, "anrB":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    .line 6397
    .local v6, "anrC":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mSne:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6398
    .local v24, "sne":Ljava/lang/String;
    const/16 v20, 0x0

    .line 6401
    .local v20, "isUCS2Only":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_0

    .line 6402
    const/4 v3, 0x0

    .line 6403
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_1

    .line 6404
    const/4 v4, 0x0

    .line 6405
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2

    .line 6406
    const/4 v5, 0x0

    .line 6407
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_3

    .line 6408
    const/4 v6, 0x0

    .line 6410
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 6411
    .local v9, "byteArrayName":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v11, v0, [B

    .line 6414
    .local v11, "byteArrayNameTemp":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v12, v0, [B

    .line 6415
    .local v12, "byteArraySNE":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 6418
    .local v14, "byteArraySNETemp":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v7, v0, [B

    .line 6419
    .local v7, "byteArrayEmail":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v8, v0, [B

    .line 6421
    .local v8, "byteArrayEmailTemp":[B
    const/16 v19, 0x0

    .line 6423
    .local v19, "isEncodable":Z
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6424
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6425
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6427
    const/16 v20, 0x0

    .line 6430
    const/16 v25, 0x1

    :try_start_0
    move/from16 v0, v25

    invoke-static {v2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6431
    const/16 v19, 0x1

    .line 6436
    :goto_0
    if-eqz v19, :cond_4

    .line 6440
    :cond_4
    const/4 v10, 0x3

    .line 6442
    .local v10, "byteArrayNameDCS":I
    :try_start_1
    const-string v25, "ISO-10646-UCS-2"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 6443
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 6444
    const/16 v18, 0x0

    .line 6445
    .local v18, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 6446
    add-int/lit8 v25, v18, 0x2

    aget-byte v25, v11, v25

    aput-byte v25, v9, v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6445
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 6432
    .end local v10    # "byteArrayNameDCS":I
    .end local v18    # "i":I
    :catch_0
    move-exception v16

    .line 6433
    .local v16, "ex":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_0

    .line 6448
    .end local v16    # "ex":Ljava/lang/Exception;
    .restart local v10    # "byteArrayNameDCS":I
    :catch_1
    move-exception v25

    .line 6454
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 6455
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "name["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ] = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-byte v26, v9, v18

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6454
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 6457
    :cond_6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6458
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    array-length v0, v9

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Parcel;->writeInt(I)V

    .line 6459
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 6460
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6462
    if-eqz v20, :cond_8

    .line 6464
    :try_start_2
    const-string v25, "ISO-10646-UCS-2"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 6465
    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v25

    new-array v7, v0, [B

    .line 6467
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 6468
    add-int/lit8 v25, v21, 0x2

    aget-byte v25, v8, v25

    aput-byte v25, v7, v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6467
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 6470
    .end local v21    # "j":I
    :catch_2
    move-exception v25

    .line 6473
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "email = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6475
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6476
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    array-length v0, v7

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Parcel;->writeInt(I)V

    .line 6483
    :goto_4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "anr = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6484
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6485
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6486
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6487
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6491
    const/16 v25, 0x1

    :try_start_3
    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6492
    const/16 v19, 0x1

    .line 6502
    :goto_5
    const/4 v13, 0x3

    .line 6504
    .local v13, "byteArraySNEDCS":I
    :try_start_4
    const-string v25, "ISO-10646-UCS-2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 6505
    array-length v0, v14

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v25

    new-array v12, v0, [B

    .line 6506
    const/16 v18, 0x0

    .line 6507
    :goto_6
    array-length v0, v14

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 6508
    add-int/lit8 v25, v18, 0x2

    aget-byte v25, v14, v25

    aput-byte v25, v12, v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 6507
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 6478
    .end local v13    # "byteArraySNEDCS":I
    :cond_8
    invoke-static {v15}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v17

    .line 6479
    .local v17, "gsm8bitEmail":[B
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6480
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 6493
    .end local v17    # "gsm8bitEmail":[B
    :catch_3
    move-exception v16

    .line 6494
    .restart local v16    # "ex":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_5

    .line 6510
    .end local v16    # "ex":Ljava/lang/Exception;
    .restart local v13    # "byteArraySNEDCS":I
    :catch_4
    move-exception v25

    .line 6514
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sne = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6517
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_7
    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 6518
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sne["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ] = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-byte v26, v12, v21

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6517
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 6520
    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6521
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    array-length v0, v12

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Parcel;->writeInt(I)V

    .line 6522
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 6524
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6526
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6527
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2065
    const/16 v1, 0x6a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2068
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2076
    return-void

    .line 2069
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2049
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2052
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2060
    return-void

    .line 2052
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2033
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2036
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2044
    return-void

    .line 2037
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2436
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2439
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2443
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1061
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1063
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1065
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1067
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1068
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1071
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 6532
    const/16 v1, 0x2c

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6534
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6536
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6537
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6538
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6539
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6540
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6542
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6543
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1019
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1040
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1046
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1048
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1050
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1052
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1053
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1056
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1025
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1027
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1029
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1035
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPass"    # Ljava/lang/String;
    .param p2, "newPass"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 6920
    const/16 v1, 0x2721

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6922
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6924
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6925
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6926
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6928
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6929
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1442
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1445
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1448
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1973
    const/16 v1, 0x29

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1976
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1978
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1984
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1210
    const/16 v1, 0x2712

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1212
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1217
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1869
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1872
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1880
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1854
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1857
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1865
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1131
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1137
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V

    .line 1138
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "callDetails"    # Lcom/android/internal/telephony/CallDetails;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1144
    const/16 v1, 0xa

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1146
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    if-eqz p4, :cond_0

    .line 1150
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p4, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p4, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p4}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    :goto_0
    if-nez p3, :cond_1

    .line 1161
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1174
    return-void

    .line 1154
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V

    .line 1180
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lcom/android/internal/telephony/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1184
    const/16 v1, 0x2711

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1186
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    if-eqz p3, :cond_0

    .line 1189
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1203
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1204
    return-void

    .line 1193
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6169
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 6170
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6171
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mWakeLockCount="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6172
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6173
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6174
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6176
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 6177
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6172
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 6179
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6182
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6055
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6057
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6059
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6060
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1532
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1535
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1538
    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1543
    const/16 v1, 0x48

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1546
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLIND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1552
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2224
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2228
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2231
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2330
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2333
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2336
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5864
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5866
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5868
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5869
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2126
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2129
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2132
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1321
    const/16 v1, 0x2718

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1323
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1326
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5998
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6000
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6001
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5929
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5932
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5934
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5935
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 6092
    const/16 v1, 0x6d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6094
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6096
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6097
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1104
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1106
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1109
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1120
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1122
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1125
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1641
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1644
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1647
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5854
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5856
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5858
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5859
    return-void
.end method

.method public getDisable2g(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 7144
    const/16 v2, 0x272f

    invoke-static {v2, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 7146
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7147
    .local v0, "dbgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7150
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7151
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2784
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2786
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2789
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1663
    const/16 v1, 0x7c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1665
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1668
    return-void
.end method

.method public getICBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 7063
    const/16 v2, 0x272b

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 7066
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7067
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 7068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7070
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7074
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7076
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7077
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7079
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7080
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7082
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7083
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1370
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1372
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1375
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1380
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1382
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1385
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1342
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1343
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1348
    const/16 v2, 0xb

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1350
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> getIMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1365
    return-void

    .line 1359
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 895
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 897
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 900
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 869
    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 872
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 875
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1558
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1561
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1564
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1582
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1585
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1588
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1574
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6376
    const/16 v1, 0x87

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6378
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6380
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6381
    return-void
.end method

.method public getModemCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2459
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2460
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2462
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v3, "RILJ"

    const-string v4, "getModemCapability"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2465
    const/16 v3, 0x61

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2466
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2475
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/RIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2476
    :goto_1
    return-void

    .line 2467
    :catch_0
    move-exception v2

    .line 2471
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2472
    :catch_1
    move-exception v3

    goto :goto_1

    .line 2470
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2471
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2473
    :goto_2
    throw v3

    .line 2472
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1608
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1611
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1614
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2702
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2705
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2707
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2708
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2212
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2216
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2219
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1652
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1655
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1658
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 1115
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "index"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 6562
    const/16 v5, 0x271a

    invoke-static {v5, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 6564
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6566
    const/4 v3, 0x0

    .line 6567
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6568
    .local v1, "p2":I
    const/4 v2, 0x0

    .line 6569
    .local v2, "p3":I
    const/4 v0, 0x0

    .line 6571
    .local v0, "data":Ljava/lang/String;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6572
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6573
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6574
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6575
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6576
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6577
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6578
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6580
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6581
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6549
    const/16 v1, 0x2719

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6551
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6554
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6555
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6557
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6558
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1222
    const/16 v1, 0x2720

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1225
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1228
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2689
    const/16 v1, 0x4a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2692
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2695
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1469
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1473
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1477
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6331
    const/16 v1, 0x82

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6334
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6336
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6337
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 3
    .param p1, "num_lock_type"    # I
    .param p2, "lock_type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 6601
    const/16 v1, 0x271d

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6604
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6606
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6607
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6609
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6610
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1619
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1622
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1625
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2730
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2732
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2735
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 6586
    const/16 v1, 0x271c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6587
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6589
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6590
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 860
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 862
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 865
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1630
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1633
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1636
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2644
    const-string v4, "handleCallSetupRequestFromSim"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2646
    const/16 v4, 0x47

    invoke-static {v4, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2650
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2652
    new-array v0, v2, [I

    .line 2653
    .local v0, "param":[I
    if-eqz p1, :cond_0

    :goto_0
    aput v2, v0, v3

    .line 2654
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2655
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2656
    return-void

    :cond_0
    move v2, v3

    .line 2653
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnection: gsmIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1393
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1395
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1398
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1402
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1418
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1422
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1425
    return-void
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rejectCause"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 6963
    const/16 v1, 0x2725

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6965
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6966
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rejectCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6970
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6971
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1407
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1410
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1413
    return-void
.end method

.method public holdCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 6977
    const/16 v1, 0x2726

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6978
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6980
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6981
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6203
    const/16 v1, 0x74

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6204
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6205
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6210
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6211
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 2082
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2083
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 2090
    const/16 v2, 0x1c

    invoke-static {v2, p10}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2093
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2096
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2097
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2100
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2101
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> iccIO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2121
    return-void

    .line 2115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6189
    const/16 v1, 0x73

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6190
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6196
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 6234
    const/16 v1, 0x72

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 6236
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 6219
    if-gtz p1, :cond_0

    .line 6220
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6224
    :cond_0
    const/16 v1, 0x75

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/RIL;->iccTransmitApduHelper(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 6226
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x51

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2504
    const/16 v2, 0x3b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2508
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    aget-byte v2, p1, v4

    if-ne v2, v6, :cond_0

    aget-byte v2, p1, v5

    const/16 v3, 0x42

    if-eq v2, v3, :cond_1

    :cond_0
    aget-byte v2, p1, v4

    if-ne v2, v6, :cond_2

    aget-byte v2, p1, v5

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2

    .line 2511
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2512
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 2537
    :goto_0
    return-void

    .line 2518
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 2520
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v2, :cond_3

    .line 2521
    const-string v2, "15"

    const/4 v3, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2522
    const-string v0, "****"

    .line 2529
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2533
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2535
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 2523
    :cond_4
    const-string v2, "1627"

    const/4 v3, 0x4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "KOREA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2525
    const-string v0, "****"

    goto :goto_1
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2541
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2544
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2546
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2549
    return-void
.end method

.method public modifyCallConfirm(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 3
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1266
    const/16 v1, 0x2714

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1268
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/CallModify;->call_index:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1276
    return-void
.end method

.method public modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 3
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1253
    const/16 v1, 0x2713

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1255
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/CallModify;->call_index:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1263
    return-void
.end method

.method public modifyDnsByCpa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "dnses"    # Ljava/lang/String;
    .param p2, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6710
    new-array v7, v9, [Ljava/lang/String;

    .line 6711
    .local v7, "tmpDns":[Ljava/lang/String;
    const-string v0, "0.0.0.0"

    .line 6712
    .local v0, "DEFAULT_NULL_ADDRESS":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kddi_cpa_on"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v4, v8

    .line 6713
    .local v4, "isKddiCpaOn":Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kddi_cpa_static_dns1"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6714
    .local v1, "cpaDns1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kddi_cpa_static_dns2"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6715
    .local v2, "cpaDns2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "modifyDnsByCpa (isKddiCpaOn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cpaDns1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "cpaDns2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dnses:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6716
    if-eqz v2, :cond_0

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v2, v0

    .line 6718
    :cond_1
    if-eqz v4, :cond_8

    .line 6719
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6720
    .local v6, "propertyPrefix":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/String;

    .line 6723
    .local v3, "dnsServers":[Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6724
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6725
    const-string v1, "1.0.0.0"

    .line 6726
    const-string v2, "1.0.0.0"

    .line 6739
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dns1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6740
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dns2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6744
    .end local v3    # "dnsServers":[Ljava/lang/String;
    .end local v6    # "propertyPrefix":Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v1    # "cpaDns1":Ljava/lang/String;
    .end local v2    # "cpaDns2":Ljava/lang/String;
    .end local v4    # "isKddiCpaOn":Z
    :cond_4
    move v4, v9

    .line 6712
    goto/16 :goto_0

    .line 6728
    .restart local v1    # "cpaDns1":Ljava/lang/String;
    .restart local v2    # "cpaDns2":Ljava/lang/String;
    .restart local v3    # "dnsServers":[Ljava/lang/String;
    .restart local v4    # "isKddiCpaOn":Z
    .restart local v6    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6730
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tmpdns[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", tmpDns[1]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v7, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6731
    aget-object v10, v7, v9

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "1.0.0.0"

    aput-object v10, v7, v9

    .line 6732
    :cond_6
    aget-object v10, v7, v8

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "1.0.0.0"

    aput-object v10, v7, v8

    .line 6733
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "dns1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v9

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6734
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "dns2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v8

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6735
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v8, v7, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    .line 6736
    goto/16 :goto_1

    .end local v3    # "dnsServers":[Ljava/lang/String;
    .end local v6    # "propertyPrefix":Ljava/lang/String;
    :cond_8
    move-object v5, p1

    .line 6744
    goto/16 :goto_1
.end method

.method public modifyNetworkTypeByOperator(I)I
    .locals 15
    .param p1, "networkType"    # I

    .prologue
    .line 6625
    const-string v12, "persist.radio.dcmlte"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 6626
    .local v4, "isDcmLteFeature":Z
    const-string v12, "gsm.operator.isroaming"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 6627
    .local v5, "isRoaming":Z
    const-string v12, "persist.radio.setnwkmode"

    const/16 v13, 0x9

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 6628
    .local v8, "preferredNetworkType":I
    iget-object v12, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v10, 0x1

    .line 6630
    .local v10, "userDataEnabled":Z
    :goto_0
    iget-object v12, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_roaming"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v11, 0x1

    .line 6632
    .local v11, "userDataRoamingEnabled":Z
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "voicecall_type"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_3

    const/4 v6, 0x1

    .line 6633
    .local v6, "isVoLteOn":Z
    :goto_2
    const-string v12, "gsm.operator.numeric"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6634
    .local v2, "campMcc":Ljava/lang/String;
    const-string v12, "gsm.sim.operator.numeric"

    const-string v13, "44050"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6636
    .local v3, "homeNet":Ljava/lang/String;
    const-string v12, "00101"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "99999"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "45001"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_0
    move/from16 v7, p1

    .line 6704
    .end local p1    # "networkType":I
    .local v7, "networkType":I
    :goto_3
    return v7

    .line 6628
    .end local v2    # "campMcc":Ljava/lang/String;
    .end local v3    # "homeNet":Ljava/lang/String;
    .end local v6    # "isVoLteOn":Z
    .end local v7    # "networkType":I
    .end local v10    # "userDataEnabled":Z
    .end local v11    # "userDataRoamingEnabled":Z
    .restart local p1    # "networkType":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 6630
    .restart local v10    # "userDataEnabled":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 6632
    .restart local v11    # "userDataRoamingEnabled":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 6640
    .restart local v2    # "campMcc":Ljava/lang/String;
    .restart local v3    # "homeNet":Ljava/lang/String;
    .restart local v6    # "isVoLteOn":Z
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_9

    .line 6641
    const/4 v5, 0x0

    .line 6648
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "modifyNetworkTypeByOperator (preferredNetworkType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userDataEnabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isRoaming:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userDataRoamingEnabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6651
    if-eqz v10, :cond_c

    if-eqz v5, :cond_5

    if-eqz v11, :cond_c

    :cond_5
    const/4 v10, 0x1

    .line 6664
    :goto_5
    const-string v12, "KDI"

    const-string v13, "EUR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 6665
    iget-object v12, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 6666
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v12, "japan_system_select_key"

    const/4 v13, 0x1

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6668
    .local v0, "LteDataComm":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "... LteDataComm:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6670
    if-eqz v5, :cond_e

    .line 6671
    if-eqz v10, :cond_d

    if-eqz v0, :cond_d

    const/4 v10, 0x1

    .line 6676
    .end local v0    # "LteDataComm":Z
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    :goto_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_NamSupport"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 6678
    const-string v12, "ril.allowDataEnableByNam"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 6679
    .local v1, "allowDataEnableByNam":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "allowDataEnableByNam: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6680
    if-eqz v10, :cond_f

    if-eqz v1, :cond_f

    const/4 v10, 0x1

    .line 6683
    .end local v1    # "allowDataEnableByNam":Z
    :cond_7
    :goto_7
    move/from16 p1, v8

    .line 6685
    if-nez v10, :cond_8

    .line 6686
    packed-switch v8, :pswitch_data_0

    :cond_8
    :goto_8
    :pswitch_0
    move/from16 v7, p1

    .line 6704
    .end local p1    # "networkType":I
    .restart local v7    # "networkType":I
    goto/16 :goto_3

    .line 6642
    .end local v7    # "networkType":I
    .restart local p1    # "networkType":I
    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "000"

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "000"

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 6643
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 6645
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 6651
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 6671
    .restart local v0    # "LteDataComm":Z
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_d
    const/4 v10, 0x0

    goto :goto_6

    .line 6673
    :cond_e
    const/4 v10, 0x1

    goto :goto_6

    .line 6680
    .end local v0    # "LteDataComm":Z
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v1    # "allowDataEnableByNam":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_7

    .line 6688
    .end local v1    # "allowDataEnableByNam":Z
    :pswitch_1
    const/16 p1, 0x2

    .line 6689
    goto :goto_8

    .line 6691
    :pswitch_2
    const/16 p1, 0x3

    .line 6692
    goto :goto_8

    .line 6694
    :pswitch_3
    const/16 p1, 0x4

    .line 6695
    goto :goto_8

    .line 6697
    :pswitch_4
    const/16 p1, 0x7

    .line 6698
    goto :goto_8

    .line 6686
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected notifyModemCap([BLjava/lang/Integer;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "phoneId"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 7050
    new-instance v1, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;-><init>(Lcom/android/internal/telephony/RIL;I[B)V

    .line 7054
    .local v1, "buffer":Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 7056
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mModemCapRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 7057
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODEM_CAPABILITY on phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notified to registrants"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6260
    const/16 v1, 0x76

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6262
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6267
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6268
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6297
    const/16 v1, 0x79

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6299
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6300
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6305
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6306
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6285
    const/16 v1, 0x78

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6287
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6292
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6293
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 6272
    const/16 v1, 0x77

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6274
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6275
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6280
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6281
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2881
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    .line 2882
    const-string v2, "Get default display because DefaultDisplay is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2883
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2884
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    .line 2887
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    if-eqz v2, :cond_2

    .line 2888
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mDefaultDisplayState:I

    .line 2893
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->updateScreenState()V

    .line 2895
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2896
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2897
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2898
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V

    .line 2909
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_1
    return-void

    .line 2890
    :cond_2
    const-string v2, "Can\'t get default display"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2899
    .restart local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 2903
    const-string v2, "EMERGENCY_MODE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2904
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V

    goto :goto_1

    .line 2906
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V

    goto :goto_1
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3104
    const/4 v9, 0x0

    .line 3106
    .local v9, "found":Z
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3108
    .local v11, "salesCode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3109
    .local v12, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3113
    .local v0, "error":I
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    .line 3115
    .local v10, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v10, :cond_1

    .line 3116
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected solicited response! sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const/4 v10, 0x0

    .line 3430
    .end local v10    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-object v10

    .line 3121
    .restart local v10    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    const/4 v1, 0x0

    .line 3123
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_3

    .line 3125
    :cond_2
    :try_start_0
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v2, :sswitch_data_0

    .line 3319
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized solicited response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3321
    .end local v1    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v13

    .line 3324
    .local v13, "tr":Ljava/lang/Throwable;
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception, possible invalid RIL response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3328
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 3329
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3330
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3131
    .end local v13    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ret":Ljava/lang/Object;
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 3336
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x81

    if-ne v2, v3, :cond_4

    .line 3339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Setting Radio State to Unavailable regardless of error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3341
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 3342
    const-string v2, "DCGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    const-string v3, "sys.deviceOffReq"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3343
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_b

    .line 3344
    const-string v2, "ril.deviceOffRes"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    :cond_4
    :goto_2
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v2, :pswitch_data_0

    .line 3366
    :cond_5
    :goto_3
    :pswitch_0
    if-eqz v0, :cond_7

    .line 3367
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v2, :sswitch_data_1

    .line 3407
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3409
    :cond_7
    if-nez v0, :cond_0

    .line 3410
    const-string v2, "CTC"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3411
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x49

    if-ne v2, v3, :cond_9

    .line 3412
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_8

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_e

    .line 3413
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_mode_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3414
    const-string v2, "RILJ"

    const-string v3, "Set LTE_MODE_SWITCH off"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    :cond_9
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3, v1}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3425
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 3426
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3427
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3132
    .restart local v1    # "ret":Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3133
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3134
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3135
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3136
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3137
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3138
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3139
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3140
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3141
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3142
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3143
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3145
    :sswitch_d
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3146
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_a

    .line 3147
    const-string v2, "testing emergency call, notify ECM Registrants"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3148
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 3151
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 3152
    goto/16 :goto_1

    .line 3154
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3155
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3156
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3157
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3158
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3159
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3160
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3161
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3162
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3163
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3164
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3165
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3166
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3167
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3168
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3169
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3170
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3171
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3172
    :sswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3173
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3174
    :sswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3175
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3176
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3177
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3178
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3179
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3180
    :sswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3181
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3182
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3183
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3184
    :sswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3185
    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3186
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3187
    :sswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3189
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 3191
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    goto/16 :goto_1

    .line 3196
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 3198
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    goto/16 :goto_1

    .line 3202
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3203
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3204
    :sswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3205
    :sswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3206
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3207
    :sswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3208
    :sswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3209
    :sswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3210
    :sswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3211
    :sswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3212
    :sswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3213
    :sswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3214
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3215
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3216
    :sswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3217
    :sswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3218
    :sswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3219
    :sswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3220
    :sswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3221
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3222
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3223
    :sswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3224
    :sswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3225
    :sswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3226
    :sswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3227
    :sswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3228
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3229
    :sswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3230
    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3231
    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3232
    :sswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3233
    :sswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3234
    :sswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3235
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3236
    :sswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3237
    :sswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3238
    :sswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3239
    :sswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3240
    :sswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3241
    :sswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3242
    :sswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3243
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3244
    :sswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3245
    :sswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3246
    :sswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3247
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3248
    :sswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3249
    :sswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3250
    :sswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3251
    :sswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3252
    :sswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3253
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3254
    :sswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3255
    :sswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3256
    :sswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3257
    :sswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3258
    :sswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3259
    :sswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3260
    :sswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3261
    :sswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3262
    .local v1, "ret":Ljava/lang/Object;
    :sswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3263
    :sswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3264
    :sswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3265
    :sswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3266
    :sswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3267
    :sswitch_73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3268
    :sswitch_74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3269
    :sswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3270
    :sswitch_76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3271
    :sswitch_77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3272
    :sswitch_78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3273
    :sswitch_79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3274
    :sswitch_7a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3275
    :sswitch_7b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3276
    :sswitch_7c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3277
    :sswitch_7d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3278
    :sswitch_7e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3279
    :sswitch_7f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3280
    :sswitch_80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3281
    :sswitch_81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3282
    :sswitch_82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3283
    :sswitch_83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3284
    :sswitch_84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3285
    :sswitch_85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3287
    :sswitch_86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3288
    :sswitch_87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3289
    :sswitch_88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3290
    :sswitch_89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3291
    :sswitch_8a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3292
    :sswitch_8b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3293
    :sswitch_8c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3294
    :sswitch_8d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCbSettings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3295
    :sswitch_8e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3296
    :sswitch_8f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSIM_PB(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3297
    :sswitch_90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3298
    :sswitch_91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3299
    :sswitch_92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSIM_LockInfo(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3300
    :sswitch_93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3301
    :sswitch_94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3302
    :sswitch_95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responsePreferredNetworkList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3303
    :sswitch_96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3304
    :sswitch_97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3305
    :sswitch_98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3306
    :sswitch_99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3307
    :sswitch_9a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3308
    :sswitch_9b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3309
    :sswitch_9c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSimPowerDone(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3310
    :sswitch_9d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseBootstrap(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3311
    :sswitch_9e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseNaf(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3312
    :sswitch_9f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3313
    :sswitch_a0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3314
    :sswitch_a1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3315
    :sswitch_a2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 3316
    :sswitch_a3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 3345
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3346
    const-string v2, "ril.deviceOffRes2"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3356
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_5

    .line 3358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3361
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 3373
    :sswitch_a4
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_6

    .line 3375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3378
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4

    .line 3385
    :sswitch_a5
    const/4 v2, 0x6

    if-eq v2, v0, :cond_c

    const/4 v2, 0x2

    if-ne v2, v0, :cond_d

    .line 3389
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 3390
    .local v1, "ret":Lcom/android/internal/telephony/RadioCapability;
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 3394
    .end local v1    # "ret":Lcom/android/internal/telephony/RadioCapability;
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 3395
    .restart local v1    # "ret":Lcom/android/internal/telephony/RadioCapability;
    const/4 v0, 0x0

    .line 3398
    goto/16 :goto_4

    .line 3401
    .end local v1    # "ret":Lcom/android/internal/telephony/RadioCapability;
    :sswitch_a6
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    .line 3403
    .local v1, "ret":Landroid/telephony/ModemActivityInfo;
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 3416
    .end local v1    # "ret":Landroid/telephony/ModemActivityInfo;
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_mode_switch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3417
    const-string v2, "RILJ"

    const-string v3, "Set LTE_MODE_SWITCH on"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3125
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_5e
        0x57 -> :sswitch_56
        0x58 -> :sswitch_57
        0x59 -> :sswitch_58
        0x5a -> :sswitch_59
        0x5b -> :sswitch_5a
        0x5c -> :sswitch_5b
        0x5d -> :sswitch_5c
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_65
        0x64 -> :sswitch_63
        0x65 -> :sswitch_64
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7a
        0x7a -> :sswitch_7b
        0x7b -> :sswitch_7c
        0x7c -> :sswitch_7d
        0x7d -> :sswitch_7e
        0x80 -> :sswitch_70
        0x81 -> :sswitch_7f
        0x82 -> :sswitch_80
        0x83 -> :sswitch_81
        0x84 -> :sswitch_82
        0x85 -> :sswitch_83
        0x86 -> :sswitch_84
        0x87 -> :sswitch_85
        0x2711 -> :sswitch_86
        0x2712 -> :sswitch_87
        0x2713 -> :sswitch_88
        0x2714 -> :sswitch_89
        0x2715 -> :sswitch_8a
        0x2716 -> :sswitch_8b
        0x2717 -> :sswitch_8c
        0x2718 -> :sswitch_8d
        0x2719 -> :sswitch_8e
        0x271a -> :sswitch_8f
        0x271b -> :sswitch_90
        0x271c -> :sswitch_91
        0x271d -> :sswitch_92
        0x271e -> :sswitch_93
        0x271f -> :sswitch_94
        0x2720 -> :sswitch_95
        0x2721 -> :sswitch_96
        0x2722 -> :sswitch_97
        0x2723 -> :sswitch_98
        0x2724 -> :sswitch_99
        0x2725 -> :sswitch_9a
        0x2726 -> :sswitch_9b
        0x2727 -> :sswitch_9c
        0x2729 -> :sswitch_9d
        0x272a -> :sswitch_9e
        0x272b -> :sswitch_9f
        0x272c -> :sswitch_a0
        0x272d -> :sswitch_37
        0x272e -> :sswitch_a1
        0x272f -> :sswitch_a2
        0x2730 -> :sswitch_a3
    .end sparse-switch

    .line 3353
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3367
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_a4
        0x4 -> :sswitch_a4
        0x6 -> :sswitch_a4
        0x7 -> :sswitch_a4
        0x2b -> :sswitch_a4
        0x82 -> :sswitch_a5
        0x87 -> :sswitch_a6
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 31
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3612
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3614
    .local v19, "response":I
    sparse-switch v19, :sswitch_data_0

    .line 3707
    :try_start_0
    new-instance v26, Ljava/lang/RuntimeException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unrecognized unsol response: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3709
    :catch_0
    move-exception v25

    .line 3710
    .local v25, "tr":Ljava/lang/Throwable;
    const-string v26, "RILJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception processing unsol response: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Exception:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    .end local v25    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3621
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 3715
    :goto_1
    sparse-switch v19, :sswitch_data_1

    goto :goto_0

    .line 3718
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    .line 3719
    .local v12, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3721
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 3624
    .end local v12    # "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    const/16 v26, 0x0

    :try_start_2
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    .line 3626
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .line 3627
    .local v21, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3628
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3629
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3630
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3631
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3636
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .line 3637
    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3638
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3639
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3640
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3641
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3642
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3643
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3644
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3645
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3646
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3647
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3648
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 3649
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3650
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3651
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3652
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3653
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3654
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3655
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3656
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3657
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v21

    .local v21, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3658
    .end local v21    # "ret":Ljava/util/ArrayList;
    :sswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .local v21, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3659
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3660
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3661
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3662
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3663
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3664
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3665
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3666
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v21

    .local v21, "ret":Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 3667
    .end local v21    # "ret":Ljava/util/ArrayList;
    :sswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .local v21, "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3668
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3669
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3670
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3672
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_29
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3673
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3674
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3675
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3677
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSSReleaseCompleteNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3678
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3679
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3680
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_30
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3681
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_31
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3682
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3683
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_33
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3684
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3685
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_35
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3686
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_36
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3687
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_37
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3688
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_38
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallModify(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3689
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_39
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3690
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3691
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3692
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3693
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3694
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3695
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3696
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_40
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3697
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_41
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3698
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_42
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3699
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_43
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3700
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_44
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3701
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_45
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3702
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_46
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3703
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_47
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    .restart local v21    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 3724
    .end local v21    # "ret":Ljava/lang/Object;
    :sswitch_48
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3730
    :sswitch_49
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3736
    :sswitch_4a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3742
    :sswitch_4b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3745
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v5, v0, [Ljava/lang/String;

    .line 3747
    .local v5, "a":[Ljava/lang/String;
    const/16 v26, 0x1

    check-cast v21, Ljava/lang/String;

    aput-object v21, v5, v26

    .line 3751
    invoke-static {v5}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 3752
    .local v22, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3757
    :cond_1
    const-string v26, "persist.EarthquakeTestmode"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 3758
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->testingETWS(Landroid/telephony/SmsMessage;)V

    goto/16 :goto_0

    .line 3764
    .end local v5    # "a":[Ljava/lang/String;
    .end local v22    # "sms":Landroid/telephony/SmsMessage;
    :sswitch_4c
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3772
    :sswitch_4d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3774
    check-cast v21, [I

    move-object/from16 v23, v21

    check-cast v23, [I

    .line 3776
    .local v23, "smsIndex":[I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 3777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3782
    :cond_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23    # "smsIndex":[I
    :sswitch_4e
    move-object/from16 v26, v21

    .line 3787
    check-cast v26, [Ljava/lang/String;

    move-object/from16 v18, v26

    check-cast v18, [Ljava/lang/String;

    .line 3789
    .local v18, "resp":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 3790
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3791
    const/16 v26, 0x0

    check-cast v21, [Ljava/lang/String;

    check-cast v21, [Ljava/lang/String;

    const/16 v27, 0x0

    aget-object v27, v21, v27

    aput-object v27, v18, v26

    .line 3792
    const/16 v26, 0x1

    const/16 v27, 0x0

    aput-object v27, v18, v26

    .line 3794
    :cond_3
    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3801
    .end local v18    # "resp":[Ljava/lang/String;
    :sswitch_4f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3805
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 3807
    .local v14, "nitzReceiveTime":J
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 3809
    .local v20, "result":[Ljava/lang/Object;
    const/16 v26, 0x0

    aput-object v21, v20, v26

    .line 3810
    const/16 v26, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v20, v26

    .line 3812
    const-string v26, "telephony.test.ignore.nitz"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 3815
    .local v9, "ignoreNitz":Z
    if-eqz v9, :cond_4

    .line 3816
    const-string v26, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3818
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3825
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3834
    .end local v9    # "ignoreNitz":Z
    .end local v14    # "nitzReceiveTime":J
    .end local v20    # "result":[Ljava/lang/Object;
    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3840
    :sswitch_51
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3846
    :sswitch_52
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3855
    :sswitch_53
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3864
    :sswitch_54
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3873
    :sswitch_55
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3882
    :sswitch_56
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3891
    :sswitch_57
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3899
    :sswitch_58
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3908
    :sswitch_59
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3917
    :sswitch_5a
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3925
    :sswitch_5b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3933
    :sswitch_5c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    move-object/from16 v22, v21

    .line 3935
    check-cast v22, Landroid/telephony/SmsMessage;

    .line 3937
    .restart local v22    # "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v22    # "sms":Landroid/telephony/SmsMessage;
    :sswitch_5d
    move-object/from16 v26, v21

    .line 3944
    check-cast v26, [B

    check-cast v26, [B

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3953
    :sswitch_5e
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3961
    :sswitch_5f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3969
    :sswitch_60
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3978
    :sswitch_61
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 3981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3990
    :sswitch_62
    :try_start_3
    move-object/from16 v0, v21

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3996
    .local v11, "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3997
    .local v17, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3998
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3991
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "listInfoRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v17    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v7

    .line 3992
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string v26, "RILJ"

    const-string v27, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/ClassCastException;
    :sswitch_63
    move-object/from16 v26, v21

    .line 4003
    check-cast v26, [B

    check-cast v26, [B

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 4004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4010
    :sswitch_64
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 4011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4012
    check-cast v21, [I

    check-cast v21, [I

    const/16 v26, 0x0

    aget v26, v21, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 4013
    .local v13, "playtone":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4012
    .end local v13    # "playtone":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 4019
    :sswitch_65
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4028
    :sswitch_66
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4037
    :sswitch_67
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4046
    :sswitch_68
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4055
    :sswitch_69
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4064
    :sswitch_6a
    const-string v26, "RILJ"

    const-string v27, "!@Boot_SVC : RIL_UNSOL_RIL_CONNECTED"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4068
    const-string v26, "DCGG"

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 4069
    const-string v26, "RILJ"

    const-string v27, "do not power off radio"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_7
    :goto_4
    const v26, 0x7fffffff

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 4106
    check-cast v21, [I

    check-cast v21, [I

    const/16 v26, 0x0

    aget v26, v21, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 4070
    :cond_8
    const-string v26, "DGG"

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 4072
    const-string v26, "RILJ"

    const-string v27, "do not power off radio"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4073
    :cond_9
    const-string v26, "DCGGS"

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 4074
    const-string v26, "ril.rildreset"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4075
    .local v6, "cg_switch":Ljava/lang/String;
    const-string v26, "8"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 4076
    const-string v26, "ril.RildInit"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4077
    .local v10, "isRildReady":Ljava/lang/String;
    const/16 v16, 0x1

    .local v16, "reTryTimes":I
    :goto_5
    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 4078
    const-string v26, "RILJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Rild is not ready, reTry "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "times"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    const-wide/16 v26, 0x1f4

    :try_start_4
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4083
    :goto_6
    const-string v26, "ril.RildInit"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4077
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 4085
    :cond_a
    const-string v26, "RILJ"

    const-string v27, "[CGG] Notify ril connected event to CP!"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    const/16 v26, 0x9

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setSimPower(ILandroid/os/Message;)V

    .line 4090
    .end local v10    # "isRildReady":Ljava/lang/String;
    .end local v16    # "reTryTimes":I
    :cond_b
    const-string v26, "8"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    const-string v26, "9"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 4091
    :cond_c
    const-string v26, "RILJ"

    const-string v27, "[CGG] rildreset property value set as zero!"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    const-string v26, "ril.rildreset"

    const-string v27, "0"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4094
    .end local v6    # "cg_switch":Ljava/lang/String;
    :cond_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 4098
    :cond_e
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_4

    .line 4110
    :sswitch_6b
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4119
    :sswitch_6c
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4128
    :sswitch_6d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4137
    :sswitch_6e
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4145
    :sswitch_6f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4153
    :sswitch_70
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4161
    :sswitch_71
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4169
    :sswitch_72
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_73
    move-object/from16 v24, v21

    .line 4177
    check-cast v24, Ljava/lang/String;

    .line 4178
    .local v24, "str":Ljava/lang/String;
    const-string v26, "RILJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Executing Am "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    const-string v26, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4180
    .local v4, "Args":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/Am;->main([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4184
    .end local v4    # "Args":[Ljava/lang/String;
    .end local v24    # "str":Ljava/lang/String;
    :sswitch_74
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsRegistrationStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4192
    :sswitch_75
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4199
    :sswitch_76
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4208
    :sswitch_77
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallControlResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallControlResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4218
    :sswitch_78
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mReleaseCompleteMessageRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mReleaseCompleteMessageRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4227
    :sswitch_79
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPbInitCompleteRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPbInitCompleteRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4235
    :sswitch_7a
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPbReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimPbReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4243
    :sswitch_7b
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHysteresisDCNRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHysteresisDCNRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4250
    :sswitch_7c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 4252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4258
    :sswitch_7d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 4260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHomeNetworkRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHomeNetworkRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 4266
    :sswitch_7e
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCsFallbackRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCsFallbackRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4274
    :sswitch_7f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceSystemIdRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceSystemIdRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4282
    :sswitch_80
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSetupCallStatus:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSetupCallStatus:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4289
    :sswitch_81
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsPrefNotiRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsPrefNotiRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4296
    :sswitch_82
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4298
    const-string v26, "RILJ"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "UNSOL_MODEM_CAPABILITY = mInstanceId"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    check-cast v21, [B

    check-cast v21, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->notifyModemCap([BLjava/lang/Integer;)V

    goto/16 :goto_0

    .line 4303
    :sswitch_83
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4305
    const-string v26, "RILJ"

    const-string v27, "RIL_UNSOL_SIM_SWAP_STATE_CHANGED"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimSwapRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4309
    :sswitch_84
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4311
    const-string v26, "RILJ"

    const-string v27, "RIL_UNSOL_SIM_COUNT_MISMATCHED"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimCountMismatchRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4318
    :sswitch_85
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDunStateChangedRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    goto/16 :goto_0

    .line 4327
    :sswitch_86
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 4328
    const-string v26, "RILJ"

    const-string v27, "RIL_UNSOL_IMS_RETRYOVER"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsRegistrationRetryOver:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsRegistrationRetryOver:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4337
    :sswitch_87
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSapRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSapRegistant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4346
    :sswitch_88
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccAppRefreshRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccAppRefreshRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4356
    :sswitch_89
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 4358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimIccIdNotiRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSimIccIdNotiRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4366
    :sswitch_8a
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4367
    const-string v26, "RILJ"

    const-string v27, "RIL_UNSOL_VOICE_RADIO_BEARER_HO_STATUS"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mVoiceRadioBearerHoStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4081
    .restart local v6    # "cg_switch":Ljava/lang/String;
    .restart local v10    # "isRildReady":Ljava/lang/String;
    .restart local v16    # "reTryTimes":I
    :catch_2
    move-exception v26

    goto/16 :goto_6

    .line 3614
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_14
        0x3fc -> :sswitch_15
        0x3fd -> :sswitch_16
        0x3fe -> :sswitch_17
        0x3ff -> :sswitch_13
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0x40c -> :sswitch_24
        0x40d -> :sswitch_25
        0x40e -> :sswitch_26
        0x40f -> :sswitch_27
        0x410 -> :sswitch_28
        0x412 -> :sswitch_29
        0x413 -> :sswitch_2a
        0x414 -> :sswitch_2b
        0x415 -> :sswitch_2c
        0x2af9 -> :sswitch_2d
        0x2afa -> :sswitch_2e
        0x2afb -> :sswitch_2f
        0x2b00 -> :sswitch_30
        0x2b01 -> :sswitch_31
        0x2b02 -> :sswitch_32
        0x2b05 -> :sswitch_33
        0x2b0c -> :sswitch_34
        0x2b0d -> :sswitch_35
        0x2b10 -> :sswitch_36
        0x2b13 -> :sswitch_37
        0x2b14 -> :sswitch_38
        0x2b16 -> :sswitch_39
        0x2b18 -> :sswitch_3a
        0x2b1a -> :sswitch_3b
        0x2b1b -> :sswitch_3c
        0x2b1d -> :sswitch_3d
        0x2b23 -> :sswitch_3e
        0x2b2e -> :sswitch_3f
        0x2b30 -> :sswitch_40
        0x2b31 -> :sswitch_41
        0x2b32 -> :sswitch_42
        0x2b34 -> :sswitch_43
        0x2b35 -> :sswitch_44
        0x2b36 -> :sswitch_45
        0x2b38 -> :sswitch_46
        0x2b3a -> :sswitch_47
    .end sparse-switch

    .line 3715
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_49
        0x3ea -> :sswitch_4a
        0x3eb -> :sswitch_4b
        0x3ec -> :sswitch_4c
        0x3ed -> :sswitch_4d
        0x3ee -> :sswitch_4e
        0x3f0 -> :sswitch_4f
        0x3f1 -> :sswitch_50
        0x3f2 -> :sswitch_51
        0x3f3 -> :sswitch_52
        0x3f4 -> :sswitch_53
        0x3f5 -> :sswitch_54
        0x3f6 -> :sswitch_55
        0x3f7 -> :sswitch_56
        0x3f8 -> :sswitch_57
        0x3f9 -> :sswitch_58
        0x3fa -> :sswitch_59
        0x3fb -> :sswitch_5b
        0x3fc -> :sswitch_5c
        0x3fd -> :sswitch_5d
        0x3fe -> :sswitch_5e
        0x3ff -> :sswitch_5a
        0x400 -> :sswitch_5f
        0x401 -> :sswitch_60
        0x402 -> :sswitch_61
        0x403 -> :sswitch_62
        0x404 -> :sswitch_63
        0x405 -> :sswitch_64
        0x406 -> :sswitch_65
        0x407 -> :sswitch_67
        0x408 -> :sswitch_68
        0x409 -> :sswitch_69
        0x40a -> :sswitch_6a
        0x40b -> :sswitch_66
        0x40c -> :sswitch_6b
        0x40d -> :sswitch_48
        0x40e -> :sswitch_6c
        0x40f -> :sswitch_6d
        0x410 -> :sswitch_6e
        0x412 -> :sswitch_6f
        0x413 -> :sswitch_70
        0x414 -> :sswitch_71
        0x415 -> :sswitch_72
        0x2af9 -> :sswitch_78
        0x2afa -> :sswitch_76
        0x2afb -> :sswitch_77
        0x2b00 -> :sswitch_7c
        0x2b02 -> :sswitch_73
        0x2b05 -> :sswitch_87
        0x2b0d -> :sswitch_7a
        0x2b13 -> :sswitch_74
        0x2b14 -> :sswitch_75
        0x2b16 -> :sswitch_7e
        0x2b18 -> :sswitch_7f
        0x2b1a -> :sswitch_86
        0x2b1b -> :sswitch_79
        0x2b1d -> :sswitch_7b
        0x2b23 -> :sswitch_7d
        0x2b2e -> :sswitch_80
        0x2b30 -> :sswitch_82
        0x2b31 -> :sswitch_83
        0x2b32 -> :sswitch_84
        0x2b34 -> :sswitch_85
        0x2b35 -> :sswitch_81
        0x2b36 -> :sswitch_88
        0x2b38 -> :sswitch_8a
        0x2b3a -> :sswitch_89
    .end sparse-switch
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6365
    const/16 v1, 0x86

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6367
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6369
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6370
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2581
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2585
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2588
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2308
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2311
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2314
    return-void
.end method

.method public queryCNAP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2319
    const/16 v1, 0x272d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2322
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2324
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2325
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2289
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2292
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2303
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2154
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2157
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2164
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5882
    const/16 v1, 0x4f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5885
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5887
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5888
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2342
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2343
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2349
    const/16 v2, 0x2a

    invoke-static {v2, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2353
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2354
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 2355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2357
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2362
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2365
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2367
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2368
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2371
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5942
    const/16 v1, 0x51

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5945
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5947
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5948
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1521
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1524
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1527
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2757
    const/16 v2, 0x66

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2758
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2765
    return-void

    .line 2759
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2772
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2774
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2777
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 6076
    const/16 v1, 0x7d

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6078
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6079
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6080
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6084
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6085
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6064
    const/16 v1, 0x69

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6066
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6070
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6071
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2007
    const/16 v1, 0x81

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2010
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2013
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2448
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2451
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2454
    return-void
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4636
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4637
    .local v7, "num":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4644
    .local v8, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 4645
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4647
    .local v2, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4648
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4651
    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->id:I

    .line 4652
    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    and-int/lit16 v13, v13, 0xff

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4654
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4655
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4656
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4657
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4658
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4659
    .local v12, "voiceSettings":I
    if-nez v12, :cond_4

    const/4 v13, 0x0

    :goto_3
    iput-boolean v13, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4675
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4676
    .local v9, "type":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4677
    .local v3, "domain":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4683
    .local v4, "extras":Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/CallDetails;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v3, v14}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 4684
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v13, v4}, Lcom/android/internal/telephony/CallDetails;->setExtrasFromCsv(Ljava/lang/String;)V

    .line 4686
    const-string v13, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dc.index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " dc.id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " dc.callDetails "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_4
    iput-boolean v13, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4689
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4690
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4691
    .local v6, "np":I
    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v13

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4712
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4713
    const-string v13, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "responseCallList dc.name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v13

    iput v13, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4717
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4718
    .local v11, "uusInfoPresent":I
    const/4 v13, 0x1

    if-ne v11, v13, :cond_6

    .line 4719
    new-instance v13, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v13}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4720
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4721
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4722
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 4723
    .local v10, "userData":[B
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4724
    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4727
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4729
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4736
    .end local v10    # "userData":[B
    :goto_5
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/TelephonyFeatures;->alwaysTerminalbasedCW(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4739
    const/4 v1, 0x0

    .line 4740
    .local v1, "cw":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 4741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "volte_call_waiting_slot2"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4748
    :goto_6
    if-nez v1, :cond_8

    .line 4749
    const-string v13, "T/B_CALL_WAITING - hangupWaitingOrBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4750
    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v14, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v13, v14, :cond_8

    .line 4751
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/RIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 4768
    .end local v1    # "cw":I
    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v3    # "domain":I
    .end local v4    # "extras":Ljava/lang/String;
    .end local v6    # "np":I
    .end local v9    # "type":I
    .end local v11    # "uusInfoPresent":I
    .end local v12    # "voiceSettings":I
    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4770
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v13, :cond_1

    .line 4772
    const-string v13, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4774
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v13}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 4778
    :cond_1
    return-object v8

    .line 4655
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4656
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4659
    .restart local v12    # "voiceSettings":I
    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 4688
    .restart local v3    # "domain":I
    .restart local v4    # "extras":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 4732
    .restart local v6    # "np":I
    .restart local v11    # "uusInfoPresent":I
    :cond_6
    const-string v13, "Incoming UUS : NOT present!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 4744
    .restart local v1    # "cw":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "volte_call_waiting"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_6

    .line 4757
    .end local v1    # "cw":I
    :cond_8
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4759
    iget-boolean v13, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v13, :cond_9

    .line 4760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4761
    const-string v13, "InCall VoicePrivacy is enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4644
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4763
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4764
    const-string v13, "InCall VoicePrivacy is disabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5171
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 5173
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 5174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 5191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 5193
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 5194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 5195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 5196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 5197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 5198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 5199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 5201
    return-object v0
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x5

    .line 4855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4856
    .local v6, "ver":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4861
    .local v4, "num":I
    if-ge v6, v9, :cond_5

    .line 4862
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 4863
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput v6, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 4864
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 4865
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 4866
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4867
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4870
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4871
    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4872
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 4874
    :cond_1
    const/4 v7, 0x4

    if-lt v4, v7, :cond_2

    .line 4875
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4876
    .local v2, "dnses":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseSetupDataCall got dnses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4877
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4878
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 4881
    .end local v2    # "dnses":Ljava/lang/String;
    :cond_2
    if-lt v4, v9, :cond_3

    .line 4882
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4883
    .local v3, "gateways":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseSetupDataCall got gateways="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4884
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4885
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 4888
    .end local v3    # "gateways":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x6

    if-lt v4, v7, :cond_4

    .line 4889
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4890
    .local v5, "pcscf":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseSetupDataCall got pcscf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4891
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4892
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 4904
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v5    # "pcscf":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    .line 4896
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_5
    const/4 v7, 0x1

    if-eq v4, v7, :cond_6

    .line 4897
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL_REQUEST_SETUP_DATA_CALL response expecting 1 RIL_Data_Call_response_v5 got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4901
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/RIL;->getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    move-result-object v1

    .restart local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    goto :goto_0
.end method

.method protected send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v2, 0x1

    .line 3008
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 3009
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 3010
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 3019
    :goto_0
    return-void

    .line 3014
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3016
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1724
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1726
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1728
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1729
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1735
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5973
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5975
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5978
    sget-boolean v1, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v1, :cond_2

    .line 5979
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5980
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5985
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5994
    :goto_1
    return-void

    .line 5982
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ...("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 5990
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5993
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_1
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1811
    const/16 v1, 0x57

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1814
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1819
    return-void
.end method

.method public sendCdmaSmsMore([BLandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 6950
    const/16 v1, 0x2724

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6952
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    .line 6954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6956
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6957
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1673
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1676
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1678
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1681
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "ussdString"    # [B
    .param p2, "length"    # I
    .param p3, "dcsCode"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 6750
    const/16 v1, 0x2723

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6752
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DCS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6755
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6756
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6757
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6758
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6759
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2609
    const/16 v1, 0x45

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2612
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2614
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2616
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2623
    const/16 v1, 0x6b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2626
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-boolean v1, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-eqz v1, :cond_0

    .line 2627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2634
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2636
    return-void

    .line 2629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1839
    const/16 v1, 0x71

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1841
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1843
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1850
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 1824
    const/16 v1, 0x71

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1826
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    int-to-byte v2, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1828
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1835
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1746
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1749
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1754
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1759
    const/16 v1, 0x1a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1762
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1767
    return-void
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 6935
    const/16 v1, 0x1a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6938
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smscPDU: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6939
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6941
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 6943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6945
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6946
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2595
    const/16 v1, 0x46

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2598
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2600
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2602
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2418
    const/16 v2, 0x1d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2422
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v0, "*******"

    .line 2424
    .local v0, "logUssdString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2428
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2431
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1482
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1485
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1488
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1492
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2559
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2562
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2569
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2137
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2141
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2149
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 2237
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/RIL;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2238
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "startTime"    # Ljava/lang/String;
    .param p7, "endTime"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 2244
    const/16 v3, 0x22

    invoke-static {v3, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2247
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2249
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2250
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2251
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2252
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    if-eqz p6, :cond_1

    const-string v3, ":"

    invoke-virtual {p6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2254
    const-string v3, ":"

    invoke-virtual {p6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2255
    .local v2, "startTimes":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2256
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 2264
    .end local v2    # "startTimes":[Ljava/lang/String;
    :goto_0
    if-eqz p7, :cond_3

    const-string v3, ":"

    invoke-virtual {p7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2265
    const-string v3, ":"

    invoke-virtual {p7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2266
    .local v0, "endTimes":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2267
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 2274
    .end local v0    # "endTimes":[Ljava/lang/String;
    :goto_1
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2275
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2282
    return-void

    .line 2258
    .restart local v2    # "startTimes":[Ljava/lang/String;
    :cond_0
    const/4 p6, 0x0

    goto/16 :goto_0

    .line 2261
    .end local v2    # "startTimes":[Ljava/lang/String;
    :cond_1
    const/4 p6, 0x0

    goto/16 :goto_0

    .line 2269
    .restart local v0    # "endTimes":[Ljava/lang/String;
    :cond_2
    const/4 p7, 0x0

    goto :goto_1

    .line 2272
    .end local v0    # "endTimes":[Ljava/lang/String;
    :cond_3
    const/4 p7, 0x0

    goto :goto_1
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2169
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2172
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2180
    return-void

    .line 2173
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 6040
    const/16 v2, 0x5e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6042
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6043
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6047
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6048
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 11
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6005
    const/16 v8, 0x5d

    invoke-static {v8, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 6008
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6010
    .local v5, "processedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 6011
    .local v1, "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 6012
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    invoke-direct {v8, v2, v2, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6011
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6010
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6019
    .end local v1    # "config":Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 6020
    .local v6, "rilConfigs":[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    array-length v9, v6

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6021
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 6022
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6023
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6024
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6021
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6024
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 6028
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " configs : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6035
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6036
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5895
    const/16 v1, 0x4e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5898
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5899
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5904
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5905
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5912
    const/16 v1, 0x4d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5915
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5916
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5921
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5922
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 3
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellInfoListRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6105
    const/16 v1, 0x6e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6107
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6108
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6112
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6113
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 923
    const/16 v2, 0x7b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 925
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 929
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 932
    return-void

    .line 930
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 4
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 6135
    const-string v2, "Set RIL_REQUEST_SET_DATA_PROFILE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6137
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 6138
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;

    .line 6141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data Profiles : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 6144
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6148
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6149
    return-void
.end method

.method public setDisable2g(ILandroid/os/Message;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 7155
    const/16 v2, 0x2730

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 7157
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7158
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 7159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7161
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7163
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7164
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7165
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7166
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2377
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 2378
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2385
    const/16 v3, 0x2b

    invoke-static {v3, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 2390
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v3, :cond_0

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2397
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2402
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2405
    if-eqz p2, :cond_1

    const-string v1, "1"

    .line 2406
    .local v1, "lockString":Ljava/lang/String;
    :goto_0
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2407
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2408
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2409
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2413
    return-void

    .line 2405
    .end local v1    # "lockString":Ljava/lang/String;
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2825
    const/16 v2, 0x5b

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2827
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2828
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2833
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2796
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 2798
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    .line 2799
    .local v1, "numOfConfig":I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2802
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2803
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2804
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    iget-object v4, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2806
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2810
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2812
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2813
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2812
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2817
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2818
    return-void
.end method

.method public setICBarring(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "barringState"    # I
    .param p3, "iCBNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 7088
    const/16 v3, 0x272c

    invoke-static {v3, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 7092
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7095
    .local v1, "dbgMsg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7099
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7101
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7102
    if-nez p2, :cond_0

    .line 7103
    const-string v0, "0"

    .line 7114
    .local v0, "barringString":Ljava/lang/String;
    :goto_0
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7115
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7116
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7117
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7119
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7120
    return-void

    .line 7104
    .end local v0    # "barringString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 7105
    const-string v0, "1"

    .restart local v0    # "barringString":Ljava/lang/String;
    goto :goto_0

    .line 7106
    .end local v0    # "barringString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 7107
    const-string v0, "3"

    .restart local v0    # "barringString":Ljava/lang/String;
    goto :goto_0

    .line 7108
    .end local v0    # "barringString":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 7109
    const-string v0, "4"

    .restart local v0    # "barringString":Ljava/lang/String;
    goto :goto_0

    .line 7111
    .end local v0    # "barringString":Ljava/lang/String;
    :cond_3
    const-string v3, "RILJ"

    const-string v4, "setICBarring: barring state is wrong value"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7112
    const-string v0, "1"

    .restart local v0    # "barringString":Ljava/lang/String;
    goto :goto_0
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 6117
    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6119
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6121
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6122
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6123
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6124
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6125
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6127
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isDebugLevelNotLow()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", protocol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6131
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6132
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2715
    const/16 v2, 0x4c

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2716
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2717
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2723
    return-void

    .line 2717
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1593
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1596
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1599
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1603
    return-void

    .line 1600
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2185
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2189
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2192
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2197
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2201
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2204
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2207
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 879
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 886
    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    .line 888
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 5873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5874
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 5875
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 1234
    const/16 v1, 0x271f

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1237
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1239
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1240
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1249
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2667
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2670
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->setInitialPhoneType(I)V

    .line 2676
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    .line 2678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2681
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2682
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1453
    const/16 v2, 0x52

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1456
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1465
    return-void

    .line 1457
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 3
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 6311
    const/16 v1, 0x83

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6314
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6315
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6316
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6317
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6318
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6319
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6326
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6327
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1989
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1991
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    if-eqz p1, :cond_0

    .line 1995
    const-string v1, "RILJ"

    const-string v2, "!@Boot_SVC : setRadioPower on"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v1, " on"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2003
    return-void

    .line 1992
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1998
    :cond_2
    const-string v1, " off"

    goto :goto_1
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6614
    const/16 v1, 0x271e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6618
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6620
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6621
    return-void
.end method

.method public setSimPower(ILandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1331
    const/16 v1, 0x2727

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1332
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1336
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2742
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2744
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2750
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2018
    const/16 v2, 0x3e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2021
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2028
    return-void

    .line 2022
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5955
    const/16 v1, 0x50

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5958
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5959
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5964
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5965
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 3
    .param p1, "powerLevel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1308
    const/16 v1, 0x2717

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1310
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1316
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 905
    const/16 v1, 0x7a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 907
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string v1, "RILJ"

    const-string v2, "!@Boot_SVC : setUiccSubscription"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 913
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 919
    return-void
.end method

.method public setVoiceDomainPref(ILandroid/os/Message;)V
    .locals 3
    .param p1, "pref"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1281
    const/16 v1, 0x2715

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1283
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1289
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 1947
    const/16 v1, 0x1b

    invoke-static {v1, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1950
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1953
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1954
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1955
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1957
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1960
    const-string v1, "RILJ"

    const-string v2, "!@Boot_SVC : setupDataCall"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1968
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1687
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMF request warning.Fixed Count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1690
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1705
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1694
    :cond_0
    const/16 v2, 0x31

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1697
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1699
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1703
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    goto :goto_0
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 6341
    const/16 v1, 0x84

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6343
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6344
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6345
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6351
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6352
    return-void

    .line 6345
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1710
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1713
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1717
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mDtmfProgress:I

    .line 1719
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 6356
    const/16 v1, 0x85

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6358
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6360
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6361
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 6906
    const/16 v1, 0x2722

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 6908
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6910
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6911
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6913
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 6914
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 937
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 978
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 984
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 986
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 988
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 990
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 993
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 943
    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 945
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 947
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 952
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 957
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 998
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1004
    const/4 v1, 0x5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1006
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1008
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1010
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1014
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 963
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 965
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 967
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 970
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 973
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "lockState"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1090
    const/16 v1, 0x8

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1092
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PERSOSUBSTATE_SIM_NETWORK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1095
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1099
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1076
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1078
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1080
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1084
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1430
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1434
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1437
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .prologue
    .line 6156
    const-string v0, "testingEmergencyCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6157
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6158
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 7124
    const/16 v2, 0x272e

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 7126
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7127
    .local v0, "dbgMsg":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/RIL;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 7128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7130
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7133
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7134
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7135
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7136
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7138
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7139
    return-void
.end method

.method public uiccGbaAuthenticateBootstrap(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 6998
    const/16 v3, 0x2729

    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 7000
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 7001
    .local v1, "randHex":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 7004
    .local v0, "autnHex":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7007
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7008
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7009
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7011
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7012
    return-void
.end method

.method public uiccGbaAuthenticateNaf(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "nafId"    # [B
    .param p3, "impi"    # [B
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 7016
    const/16 v3, 0x272a

    invoke-static {v3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 7018
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 7019
    .local v1, "nafIdHex":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 7022
    .local v0, "impiHex":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 7025
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7026
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7027
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7030
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 7031
    return-void
.end method

.method public updateStackBinding(IILandroid/os/Message;)V
    .locals 5
    .param p1, "stack"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2480
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2481
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2483
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v3, "RILJ"

    const-string v4, "updateStackBinding"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2486
    const/16 v3, 0x62

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2487
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2488
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2489
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2498
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/RIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2499
    :goto_1
    return-void

    .line 2490
    :catch_0
    move-exception v2

    .line 2494
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2495
    :catch_1
    move-exception v3

    goto :goto_1

    .line 2493
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2494
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2496
    :goto_2
    throw v3

    .line 2495
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1902
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1904
    const/16 v1, 0x60

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1907
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsCdmaCopyToRuim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1910
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1919
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1920
    return-void

    .line 1912
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;[B)V

    goto :goto_0
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1884
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1886
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1889
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1891
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1898
    return-void
.end method
