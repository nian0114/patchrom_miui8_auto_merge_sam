.class public Lcom/android/server/location/GpsLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider_samsung$4;,
        Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;,
        Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field private static final EXERCISE_LCD_OFF:I = 0x0

.field private static final EXERCISE_LCD_ON:I = 0x1

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final MAX_EXERCISE_DATA:I = 0x12c

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_KOR_SUPL_NI:I = 0x1

.field static final SUPL_INIT_USA_SUPL_NI:I = 0x2

.field static final SUPL_INIT_USA_TMO_SUPL_NI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private exerciseAltitude:[F

.field private exerciseLatitude:[D

.field private exerciseLongtitude:[D

.field private exercisePedoDistance:[D

.field private exercisePedoSpeed:[D

.field private exercisePedoStepCount:[J

.field private exercisePressure:[F

.field private exerciseSpeed:[F

.field private exerciseTimestamp:[J

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field private mBatteryTemp:D

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mExerciseLocationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

.field private mExerciseStarted:Z

.field private mGryoTempStarted:Z

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:[Ljava/net/InetAddress;

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private retAddr:[Ljava/net/InetAddress;

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;

.field private suplFqdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "GpsLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x1c6b

    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->SERVER_PORT:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->socket:Ljava/net/DatagramSocket;

    .line 103
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 110
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 111
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 112
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    .line 113
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 114
    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    .line 117
    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    .line 118
    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    .line 119
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D

    .line 124
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mGryoTempStarted:Z

    .line 127
    const-string v0, "MSBASED"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 129
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 131
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 132
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 133
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 137
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mCurrentMobileType:I

    .line 167
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    .line 184
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    .line 185
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    .line 186
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    .line 187
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    .line 188
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    .line 189
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    .line 190
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    .line 191
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    .line 192
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    .line 195
    const-string v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    .line 1715
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 1917
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$3;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    .line 199
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider_samsung;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_inject_sensor_data(DD)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider_samsung;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkUDPSuplInit()V
    .locals 3

    .prologue
    .line 1734
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider_samsung$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$2;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1767
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1768
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1456
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1461
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1462
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    .prologue
    .line 545
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 549
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 550
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 552
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 553
    :cond_0
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, 0x0

    .line 561
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_3

    .line 562
    :cond_2
    const/4 v1, 0x0

    .line 563
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_3
    return v1

    .line 556
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private extSelectPositionMode(I)I
    .locals 10
    .param p1, "_mPositionMode"    # I

    .prologue
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 458
    move v7, p1

    .line 459
    .local v7, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extSelectPositionMode()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v7, 0x1

    .line 461
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 463
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 467
    const/4 v7, 0x1

    .line 515
    :goto_0
    return v7

    .line 468
    :cond_0
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 472
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectPositionMode : LTO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v7, 0x0

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v2, "extSelectPositionMode : AGPS_TYPE_SUPL!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 478
    const/4 v7, 0x1

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_3

    .line 482
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 483
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "native_agps_xtra_set(1) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v7, 0x0

    goto :goto_0

    .line 485
    :cond_3
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_9

    .line 486
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 487
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_5

    .line 488
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[LTE] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v1, v5

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 490
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v0, v9, :cond_4

    const/4 v7, 0x2

    goto :goto_0

    .line 491
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 494
    :cond_5
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[LTE] Non KT GPS mode : LTO"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 496
    const/4 v7, 0x0

    goto :goto_0

    .line 499
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_8

    .line 500
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[3G] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v1, v5

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 502
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v0, v9, :cond_7

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 503
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 506
    :cond_8
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[3G] Non KT GPS mode : SUPL1.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 508
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 512
    :cond_9
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectPositionMode() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 13
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 520
    move v12, p1

    .line 521
    .local v12, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v12, 0x1

    .line 523
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 535
    :goto_0
    return v12

    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 528
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 531
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 533
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private getLppBitmask()I
    .locals 6

    .prologue
    .line 795
    const/4 v2, -0x1

    .line 796
    .local v2, "ret":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "op1":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "op2":Ljava/lang/String;
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op1 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op2 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v3, "Jio 4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Jio 4G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    :cond_0
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "JIO 4G operator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v2, 0x7

    .line 807
    :cond_1
    :goto_0
    return v2

    .line 803
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 804
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "No Operator LPP Disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 414
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1090
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "getSuplServerFromCSC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1094
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1096
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v4

    .line 1100
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 1105
    .local v6, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1106
    .restart local v5    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1108
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1114
    if-eqz v7, :cond_2

    .line 1115
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1124
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v8, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1127
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1134
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1135
    const-string v8, "CSC_SUPL_OPMODE"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1136
    const-string v8, "CSC_SUPL_HOST"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1138
    const-string v8, "CSC_SUPL_VER"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1139
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_PORT"

    const-string v9, "7276"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_SSL"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 1144
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 1145
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1153
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplType_s":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1117
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1120
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1121
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1109
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 1110
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1114
    if-eqz v7, :cond_0

    .line 1115
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 1116
    :catch_4
    move-exception v4

    .line 1117
    :try_start_9
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 1113
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1114
    if-eqz v7, :cond_5

    .line 1115
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1118
    :cond_5
    :goto_4
    :try_start_b
    throw v8

    .line 1116
    :catch_5
    move-exception v4

    .line 1117
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "GpsLocationProvider_ex"

    const-string v10, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1128
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v4

    .line 1129
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1130
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1147
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 1148
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1149
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "[NumberFormatException] failed to convert supl information"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .locals 3

    .prologue
    .line 318
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 320
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 324
    .local v1, "vendor":Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 365
    :cond_2
    :goto_0
    return-object v1

    .line 326
    :cond_3
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 328
    :cond_4
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 330
    :cond_5
    const-string v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 332
    :cond_6
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 333
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 334
    :cond_7
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 336
    :cond_8
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 337
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 338
    :cond_9
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 340
    :cond_a
    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 341
    :cond_b
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 342
    :cond_c
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 343
    :cond_d
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 344
    :cond_e
    const-string v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 345
    :cond_f
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 346
    :cond_10
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 347
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 348
    :cond_11
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 349
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 350
    :cond_12
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 351
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 352
    :cond_13
    const-string v2, "CHN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 358
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 359
    :cond_14
    const-string v2, "MNX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 360
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 361
    :cond_15
    const-string v2, "IUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 362
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 363
    :cond_16
    const-string v2, "SWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method public static isUSAMarket()Z
    .locals 5

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "rc":Z
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_1
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    const/4 v1, 0x1

    .line 392
    :goto_0
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v1

    .line 378
    :cond_2
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    :cond_3
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    const/4 v1, 0x1

    goto :goto_0

    .line 382
    :cond_4
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    const/4 v1, 0x1

    goto :goto_0

    .line 384
    :cond_5
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 385
    const/4 v1, 0x1

    goto :goto_0

    .line 386
    :cond_6
    const-string v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 387
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :cond_7
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 389
    const/4 v1, 0x1

    goto :goto_0

    .line 391
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 256
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 258
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 262
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 263
    .local v2, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_exercise_fulsh()I
.end method

.method private native native_exercise_start()I
.end method

.method private native native_exercise_stop()I
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_readExerciseData([J[D[D[F[F[F[D[D[JI)I
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_exercise_mode(II)I
.end method

.method private native native_set_lcd_mode(I)I
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 16
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 626
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "setCscParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-nez p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v13, 0x0

    .line 633
    .local v13, "isDeleted":Z
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 635
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    const/4 v13, 0x1

    .line 638
    :cond_2
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 644
    .end local v12    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 645
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 646
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 647
    const-string/jumbo v1, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 648
    const/16 v1, 0x1c6b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 649
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 650
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 651
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz p2, :cond_4

    .line 653
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 657
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 658
    const-string v8, "TRUE"

    .line 659
    .local v8, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v1, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CscParamIsEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v1, "TRUE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const-string/jumbo v1, "operation_mode"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 667
    const-string/jumbo v1, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 668
    const-string/jumbo v1, "hslp_port"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 669
    const-string/jumbo v1, "ssl"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 670
    const-string/jumbo v1, "ssl_cert"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 671
    const-string/jumbo v1, "supl_ver"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 673
    .local v9, "SuplVer":I
    packed-switch v9, :pswitch_data_0

    .line 679
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 682
    :goto_2
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 683
    .local v14, "mProperties_cscgps":Ljava/util/Properties;
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 684
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-eqz p2, :cond_5

    .line 687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 689
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 691
    const-string v1, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 692
    const-string v1, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 693
    const-string v1, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    const-string v1, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    const-string v1, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 698
    :cond_6
    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string v1, "/data/system/gps"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 703
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 705
    :cond_7
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v12    # "file":Ljava/io/File;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 707
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 709
    :cond_8
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v1, "Saved CSC GPS Information"

    invoke-virtual {v14, v15, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 712
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    if-eqz v15, :cond_0

    .line 718
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 719
    :catch_0
    move-exception v11

    .line 720
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 723
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 724
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    .end local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .end local v9    # "SuplVer":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "mProperties_cscgps":Ljava/util/Properties;
    :catch_2
    move-exception v11

    .line 641
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 674
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .restart local v9    # "SuplVer":I
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_2

    .line 676
    :pswitch_1
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_2

    .line 713
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v11

    .line 714
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 717
    if-eqz v15, :cond_0

    .line 718
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 719
    :catch_4
    move-exception v11

    .line 720
    :try_start_7
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 716
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 717
    if-eqz v15, :cond_9

    .line 718
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 721
    :cond_9
    :goto_3
    :try_start_9
    throw v1

    .line 719
    :catch_5
    move-exception v11

    .line 720
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 443
    if-eqz p1, :cond_0

    .line 444
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x4

    const-string/jumbo v2, "dcm-supl.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLppSupport(ZI)V
    .locals 4
    .param p1, "mEnabled"    # Z
    .param p2, "bitmask"    # I

    .prologue
    .line 817
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move v0, p1

    .line 825
    .local v0, "enabled":Z
    if-nez p1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    .line 827
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lpp_support(I)V

    .line 831
    :cond_1
    if-nez p1, :cond_2

    .line 832
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_cleanup_extention()V

    .line 833
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 404
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    if-nez p1, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1410
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 1412
    .local v4, "keyArray":[Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1413
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 1414
    aget-object v7, v4, v3

    if-eqz v7, :cond_2

    .line 1415
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    aget-object v8, v4, v3

    aget-object v9, v4, v3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1413
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1420
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/gps"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1422
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1424
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1425
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1426
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1428
    :cond_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1430
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v8, "SECGPS Configuration"

    invoke-virtual {v7, v6, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1431
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1436
    if-eqz v6, :cond_0

    .line 1437
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v1

    .line 1439
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1442
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1443
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1432
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 1433
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1436
    if-eqz v6, :cond_0

    .line 1437
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1438
    :catch_3
    move-exception v1

    .line 1439
    :try_start_6
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1435
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1436
    if-eqz v6, :cond_6

    .line 1437
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1440
    :cond_6
    :goto_2
    :try_start_8
    throw v7

    .line 1438
    :catch_4
    move-exception v1

    .line 1439
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v2, ""

    .line 225
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string v3, ""

    .line 227
    .local v3, "mServerPort":Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 243
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 238
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 425
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 434
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 275
    const/4 v3, 0x0

    .line 276
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 277
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "mcc":I
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "mnc":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v5, :cond_0

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v5, :cond_1

    .line 283
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 284
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    :cond_1
    :goto_0
    return-object v3

    .line 288
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 289
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 576
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_0

    move v2, v3

    .line 615
    :goto_0
    return v2

    .line 579
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "agps_function_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 581
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 582
    .local v2, "result":Z
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    packed-switch v1, :pswitch_data_0

    .line 605
    const/4 v2, 0x1

    .line 606
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_1
    if-ne v2, v7, :cond_3

    .line 610
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 586
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    .line 587
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 588
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 589
    const/4 v2, 0x1

    .line 590
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 592
    :cond_1
    const/4 v2, 0x0

    .line 593
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 596
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 597
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 601
    :pswitch_1
    const/4 v2, 0x0

    .line 602
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 612
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension_agps_ni_message([BI)V
    .locals 0
    .param p1, "supl_init"    # [B
    .param p2, "length"    # I

    .prologue
    .line 1846
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    .line 1847
    return-void
.end method

.method public extension_checkSmsSuplInit(Z)I
    .locals 4
    .param p1, "mEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 939
    :cond_0
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    .line 942
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 944
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_2
    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4

    .line 948
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    .line 950
    or-int/lit8 v0, v0, 0x1

    .line 951
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 954
    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_7

    .line 956
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_7

    .line 958
    or-int/lit8 v0, v0, 0x2

    .line 959
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 963
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_8

    or-int/lit8 v0, v0, 0x4

    .line 965
    :cond_8
    return v0
.end method

.method public extension_checkWapPushMsg(Z)Z
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 844
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 845
    :cond_0
    const/4 v0, 0x1

    .line 847
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .locals 13
    .param p1, "mEnabled"    # Z
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 975
    const/4 v10, 0x0

    .line 976
    .local v10, "result":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 978
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 981
    .local v8, "isAgpsSwitchMode":I
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 985
    .local v9, "pm":Landroid/os/PowerManager;
    const v0, 0x1000001a

    const-string v1, "New message notification LCD on"

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 987
    .local v12, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 988
    const-wide/16 v0, 0x1388

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 989
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 992
    if-eqz p2, :cond_1

    .line 993
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 994
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 1040
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "result":I
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    .local v11, "result":I
    :goto_0
    return v11

    .line 999
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 1000
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto :goto_0

    .line 1002
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_c

    .line 1003
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    .line 1012
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 1013
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    .line 1017
    const/4 v1, 0x3

    const-string v2, "221.148.242.107"

    const/16 v3, 0x1c6b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1018
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_5
    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    .line 1023
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    .line 1025
    or-int/lit8 v10, v10, 0x1

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 1029
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 1031
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_a

    .line 1033
    or-int/lit8 v10, v10, 0x2

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 1038
    :cond_a
    if-nez p1, :cond_b

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_b

    or-int/lit8 v10, v10, 0x4

    :cond_b
    move v11, v10

    .line 1040
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_0

    .line 1005
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_c
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 1006
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_0
.end method

.method public extension_getExtraConfigurationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1340
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1375
    .local v2, "extraConfigProperty":Ljava/util/Properties;
    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$4;->$SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1386
    :goto_0
    const-string v3, ""

    .line 1388
    .local v3, "mStringExtraConfigProperty":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1389
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v4, "Extra Configuration"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1394
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 1378
    .end local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :pswitch_0
    const-string v4, "SUPL_USE_APN"

    const-string v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    const-string v4, "SUPL_USE_FW_DNS"

    const-string v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 1391
    .restart local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1392
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1375
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 858
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 859
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 860
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 862
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 863
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 875
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 878
    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 736
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 740
    .local v6, "result_mask":I
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 741
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "temperature"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D

    .line 749
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_2

    .line 750
    :cond_1
    const-string v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 751
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 761
    :cond_2
    :goto_1
    const-string v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 762
    or-int/lit8 v6, v6, 0x1

    .line 763
    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 764
    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    :cond_3
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez p2, :cond_4

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-eqz v8, :cond_5

    .line 767
    :cond_4
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lcd_mode(I)I

    .line 769
    :cond_5
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez p2, :cond_6

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-eqz v8, :cond_7

    .line 770
    :cond_6
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lcd_mode(I)I

    .line 772
    :cond_7
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 773
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 774
    .local v7, "simState":Ljava/lang/String;
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 776
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    .line 777
    .local v3, "mask":I
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_8

    .line 778
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    .line 779
    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setLppSupport(ZI)V

    .line 783
    .end local v3    # "mask":I
    .end local v7    # "simState":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    return-object v5

    .line 742
    :cond_9
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 743
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mGryoTempStarted:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 744
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v10, 0xe

    invoke-virtual {v8, v9, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 745
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mGryoTempStarted:Z

    goto/16 :goto_0

    .line 752
    :cond_a
    const-string v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 753
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public extension_printSvStatus([I[I[FI)V
    .locals 11
    .param p1, "mSvs"    # [I
    .param p2, "mSvMasks"    # [I
    .param p3, "mSnrs"    # [F
    .param p4, "svCount"    # I

    .prologue
    const/4 v10, 0x5

    .line 889
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_6

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 897
    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    const/4 v7, 0x2

    aget v7, p2, v7

    const/4 v8, 0x1

    aget v9, p1, v0

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 906
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 908
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 909
    .local v6, "sbInView":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 911
    .local v5, "sbInUsed":Ljava/lang/StringBuffer;
    const/4 v4, 0x5

    .line 912
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 913
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 914
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 916
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 917
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 919
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 921
    :cond_5
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v0    # "i":I
    .end local v2    # "inUsedSize":I
    .end local v4    # "inViewSize":I
    .end local v5    # "sbInUsed":Ljava/lang/StringBuffer;
    .end local v6    # "sbInView":Ljava/lang/StringBuffer;
    :cond_6
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 7
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1069
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1070
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1073
    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1074
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 1086
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 1078
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 1080
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1081
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1082
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    .line 1839
    return-void
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1621
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1623
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1626
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1659
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1661
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1664
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1640
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1642
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1645
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1678
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1680
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1683
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1602
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1604
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1607
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1580
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v3

    .line 1582
    .local v3, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1585
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1587
    :catch_0
    move-exception v2

    .line 1588
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v7, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1236
    const/4 v4, 0x0

    .line 1237
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1238
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1239
    const/4 v4, 0x1

    :cond_0
    :goto_0
    move v5, v4

    .line 1330
    :goto_1
    return v5

    .line 1240
    :cond_1
    const-string v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1241
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, "opType":Ljava/lang/String;
    const-string v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1245
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1246
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1254
    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 1255
    goto :goto_0

    .line 1249
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1250
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1251
    const-string/jumbo v5, "sys.sktgps"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1255
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1256
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1258
    .local v1, "hostPort":I
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1259
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1260
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1261
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v4, 0x1

    .line 1263
    goto/16 :goto_0

    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1264
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1266
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1267
    :cond_7
    const-string v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1268
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Current user id : -2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1272
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1273
    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1274
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1277
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1278
    :cond_9
    const-string v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1279
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1281
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1282
    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1283
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1285
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1286
    :cond_b
    const-string v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1287
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1289
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1290
    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1291
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1293
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1294
    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1295
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 1296
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1299
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1301
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1302
    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1303
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 1305
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    .line 1306
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    .line 1307
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->checkUDPSuplInit()V

    .line 1312
    :cond_10
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1310
    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    goto :goto_3

    .line 1313
    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1314
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1317
    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1318
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    goto/16 :goto_1

    .line 1319
    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1320
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    .line 1321
    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1322
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1324
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1325
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1326
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1328
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public extension_sendGpsTime(JJ)V
    .locals 0
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 1569
    return-void
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 4
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1477
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1479
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1480
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extSelectKORPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 1489
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1490
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1494
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 p1, 0x0

    .line 1503
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_gnss_control(I)V

    .line 1508
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1509
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_6
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1514
    :cond_7
    if-eqz p3, :cond_8

    .line 1515
    const/4 p1, 0x2

    .line 1516
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_8
    return p1
.end method

.method public extension_set_supl_server()V
    .locals 13

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1165
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1166
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider_samsung$4;->$SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1220
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1170
    :pswitch_0
    const/4 v1, 0x3

    const-string/jumbo v2, "lbs.geo.t-mobile.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1173
    :pswitch_1
    const/4 v2, 0x0

    .line 1174
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1175
    if-eqz v2, :cond_0

    .line 1176
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1183
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1187
    :pswitch_3
    const/4 v4, 0x1

    const-string v5, "182.248.165.210"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1190
    :pswitch_4
    const/4 v4, 0x3

    const-string/jumbo v5, "supl.telusmobility.com"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1194
    :pswitch_5
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1197
    :pswitch_6
    const/4 v5, 0x0

    .line 1198
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v5

    .line 1199
    if-eqz v5, :cond_2

    .line 1200
    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1203
    :cond_2
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1207
    .end local v5    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    .line 1211
    :pswitch_8
    const/4 v7, 0x1

    const-string v8, "221.176.0.55"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1215
    :pswitch_9
    const/4 v7, 0x1

    const-string/jumbo v8, "supl.iusacell.com"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 1050
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_1

    .line 1053
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1054
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void
.end method

.method public extension_stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1530
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1532
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 1536
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1537
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_1
    return-void
.end method

.method public flushExerciseLocation()V
    .locals 0

    .prologue
    .line 2031
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_fulsh()I

    .line 2032
    return-void
.end method

.method public getExerciseLocationProvider()Landroid/location/IExerciseLocationProvider;
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    return-object v0
.end method

.method public getInitCalledByNI()Z
    .locals 1

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1697
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 205
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 206
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 207
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 208
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    .line 1778
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "provideSuplFqdn :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, ""

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1781
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 1782
    .local v4, "mActiveNetwork":Landroid/net/Network;
    if-nez v4, :cond_1

    .line 1783
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "No default network is currently active."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    .end local v4    # "mActiveNetwork":Landroid/net/Network;
    :cond_0
    :goto_0
    return-void

    .line 1786
    .restart local v4    # "mActiveNetwork":Landroid/net/Network;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    .line 1788
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/net/InetAddress;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    .line 1789
    const/4 v2, 0x0

    .local v2, "flag_v4_set":Z
    const/4 v3, 0x0

    .line 1791
    .local v3, "flag_v6_set":Z
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 1792
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    aget-object v7, v7, v0

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_5

    .line 1793
    if-nez v3, :cond_2

    .line 1794
    const/4 v3, 0x1

    .line 1795
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got IPv6 InetAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    aget-object v9, v9, v0

    aput-object v9, v7, v8

    .line 1803
    :cond_2
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 1807
    :cond_3
    const/4 v5, 0x0

    .line 1808
    .local v5, "resInetAddress":Ljava/net/InetAddress;
    if-eqz v2, :cond_7

    .line 1809
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    aget-object v5, v7, v8

    .line 1815
    :goto_3
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNS resolve result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    .line 1818
    :cond_4
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    .line 1822
    .local v6, "result":Z
    if-nez v6, :cond_9

    .line 1823
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error requesting route to host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :goto_4
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1829
    .end local v0    # "count":I
    .end local v2    # "flag_v4_set":Z
    .end local v3    # "flag_v6_set":Z
    .end local v5    # "resInetAddress":Ljava/net/InetAddress;
    .end local v6    # "result":Z
    :catch_0
    move-exception v1

    .line 1830
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "UnknownHostException occured"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 1798
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "count":I
    .restart local v2    # "flag_v4_set":Z
    .restart local v3    # "flag_v6_set":Z
    :cond_5
    if-nez v2, :cond_2

    .line 1799
    const/4 v2, 0x1

    .line 1800
    :try_start_1
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got IPv4 InetAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    aget-object v9, v9, v0

    aput-object v9, v7, v8

    goto/16 :goto_2

    .line 1791
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1810
    .restart local v5    # "resInetAddress":Ljava/net/InetAddress;
    :cond_7
    if-eqz v3, :cond_8

    .line 1811
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    const/4 v8, 0x0

    aget-object v5, v7, v8

    goto/16 :goto_3

    .line 1813
    :cond_8
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "DNS resolve failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1825
    .restart local v6    # "result":Z
    :cond_9
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully requested route to host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public removeExerciseLocation()V
    .locals 1

    .prologue
    .line 1884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 1885
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_stop()I

    .line 1886
    return-void
.end method

.method public reportExerciseData(I)V
    .locals 17
    .param p1, "numOfBatch"    # I

    .prologue
    .line 1976
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "reportExerciseData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    move-object/from16 v1, p0

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_readExerciseData([J[D[D[F[F[F[D[D[JI)I

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1982
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1983
    .local v15, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_0

    .line 1984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    .local v14, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_1
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    move/from16 v11, p1

    invoke-interface/range {v1 .. v11}, Landroid/location/IExerciseLocationListener;->onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1989
    :catch_0
    move-exception v12

    .line 1990
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "RemoteException in requestExerciseLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1993
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 1996
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_0
    monitor-exit v16

    .line 1997
    return-void

    .line 1996
    .end local v13    # "i":I
    .end local v15    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reportExerciseStatus(I)V
    .locals 7
    .param p1, "exercise_status"    # I

    .prologue
    .line 2006
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "reportExerciseStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2009
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2010
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2011
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    .local v2, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v4, p1}, Landroid/location/IExerciseLocationListener;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2010
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "GpsLocationProvider_ex"

    const-string v6, "RemoteException in requestExerciseStatus"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2018
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2021
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_0
    monitor-exit v5

    .line 2022
    return-void

    .line 2021
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public requestExerciseLocation(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "updateRateMs"    # I

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1866
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS is not enabled. native_exercise_init() will be called by exercise."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init_extention()Z

    .line 1868
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_cleanup_extention()V

    .line 1870
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-nez v0, :cond_1

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 1872
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_exercise_mode(II)I

    .line 1873
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_start()I

    .line 1875
    :cond_1
    return-void
.end method
