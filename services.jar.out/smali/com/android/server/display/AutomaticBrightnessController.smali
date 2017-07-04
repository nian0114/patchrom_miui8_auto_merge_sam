.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;,
        Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;,
        Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final HBM_LEVEL_SYSFS_PATH:Ljava/lang/String; = "/sys/class/backlight/panel/auto_brightness_level"

.field public static HBM_USER_ENABLE:Z = false

.field private static final MANUAL_LUX_LIMIT:I = 0x64

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static SPECIFIC_HBM_FEATURE:Z = false

.field private static final SPECIFIC_HBM_LUX:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TAG_PAB:Ljava/lang/String; = "[PAB] "

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710


# instance fields
.field private final AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final COMMON_LUX_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

.field private final MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final OFFSET_FIX:I

.field private final OFFSET_SUB:I

.field private final OFFSET_USER:I

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final TCON_LUX_PATH:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientCandela:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBrightnessForEbookOnly:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

.field private mExistAutoBrightnessLevelPath:Z

.field private mExistCommonLuxPath:Z

.field private mExistMdnieAutoBrightnessLevelPath:Z

.field private mExistTconBrightnessModePath:Z

.field private mExistTconLuxPath:Z

.field private mHBMDisableLevel:I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHandlerRegisterInSeperate:Landroid/os/Handler;

.field private mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

.field private mHasRetailModeApp:Z

.field private mHighHysteresis:F

.field private mIsLockZone:Z

.field private mIsSupportedSensorHubAutoBrightness:Z

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastObservedSensorHubLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLastTemporaryScreenBrightnessSettingOverride:I

.field private mLatestAnimationTarget:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLockPAB:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mManualAdjustment:F

.field private mNeedToAddPersonalAutoBrightnessPoint:Z

.field private mPendingScreenAutoBrightness:Z

.field private mPendingScreenBrightnessSetting:I

.field private mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

.field private mPrevAutoBrightnessLevel:I

.field private mPrevCommonLux:I

.field private mPrevTconBrightnessMode:Z

.field private mPrevTconLuxLevel:I

.field private mPrevUsingVariableMaxManualBrightness:Z

.field private mRecentLightSamples:I

.field private mRecentSensorHubSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenBrightnessModeSetting:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private final mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

.field private final mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingAutoBrightness:Z

.field private mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseAutoBrightness:Z

.field private mUseManualAutoBrightness:Z

.field private mUseSystemPowerSaveMode:Z

.field private mUserSwitched:Z

.field private mUsingVariableMaxManualBrightness:Z

.field private mWasTconMaxLevel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V
    .locals 9
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "brighteningLightDebounceConfig"    # J
    .param p12, "darkeningLightDebounceConfig"    # J
    .param p14, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p15, "sContextManager"    # Landroid/hardware/scontext/SContextManager;
    .param p16, "isSupportedSensorHubAutoBrightness"    # Z
    .param p17, "dynamicAutoBrightnessConfig"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p18, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const-string v4, "[DAB] "

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_DAB:Ljava/lang/String;

    .line 238
    const-string v4, "[sensor] "

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_SENSOR:Ljava/lang/String;

    .line 242
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 243
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    .line 244
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 247
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    .line 248
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    .line 252
    const-string v4, "/sys/class/backlight/panel/auto_brightness"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 253
    const-string v4, "/sys/class/tcon/tcon/auto_br"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 254
    const-string v4, "/sys/class/tcon/tcon/lux"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_LUX_PATH:Ljava/lang/String;

    .line 255
    const-string v4, "/sys/class/lcd/panel/lux"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->COMMON_LUX_PATH:Ljava/lang/String;

    .line 256
    const-string v4, "/sys/class/mdnie/mdnie/auto_brightness"

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 257
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    .line 258
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    .line 259
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    .line 260
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistMdnieAutoBrightnessLevelPath:Z

    .line 262
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 263
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 264
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevCommonLux:I

    .line 265
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 269
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHasRetailModeApp:Z

    .line 275
    const-wide/16 v4, 0x190

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

    .line 279
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    .line 280
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenAutoBrightness:Z

    .line 290
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 294
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUsingVariableMaxManualBrightness:Z

    .line 295
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevUsingVariableMaxManualBrightness:Z

    .line 300
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 316
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 319
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 322
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 716
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    .line 741
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    .line 758
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    .line 1044
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1045
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1101
    const/high16 v4, 0x437f0000    # 255.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1102
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1266
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    .line 1267
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 1269
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 1456
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1496
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    .line 1529
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$7;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$7;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 1801
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    .line 1817
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_FIX:I

    .line 1818
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_USER:I

    .line 1819
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_SUB:I

    .line 1820
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1821
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I

    .line 360
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 363
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 364
    const-class v4, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/twilight/TwilightManager;

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 365
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 366
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 367
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 368
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 369
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 370
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 371
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    .line 372
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 373
    const-wide/16 v4, 0xbb8

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 374
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 376
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 377
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 380
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 382
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltSensor:Landroid/hardware/Sensor;

    .line 386
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v4, v5, v6}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 390
    :cond_0
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 391
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 392
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 393
    new-instance v4, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 395
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RegisterInSeperateThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    .line 396
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 397
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 402
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 403
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->check_HBM_Detail()V

    .line 412
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v5

    .line 413
    :try_start_0
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    .line 414
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 415
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSettingDefault:I

    .line 416
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 419
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    .line 420
    monitor-exit v5

    .line 423
    return-void

    .line 420
    .end local v2    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/AutomaticBrightnessController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2612(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUserSwitched:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 831
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 832
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 833
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 836
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 837
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 838
    return-void
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 786
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 787
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    if-ne v4, v7, :cond_0

    .line 788
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    .line 825
    :goto_0
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 826
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 827
    return-void

    .line 792
    :cond_0
    const/4 v1, 0x1

    .line 794
    .local v1, "useLockZone":Z
    const/high16 v4, 0x43960000    # 300.0f

    cmpl-float v4, p3, v4

    if-lez v4, :cond_4

    .line 795
    const/4 v1, 0x0

    .line 801
    :goto_1
    if-eqz v1, :cond_3

    .line 802
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 803
    .local v0, "prevLockZone":Z
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    const/high16 v5, 0x428c0000    # 70.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 804
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 808
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_1

    .line 809
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 810
    iget p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 812
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_2

    .line 813
    iget p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 815
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eq v0, v4, :cond_3

    .line 816
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLightSensorMeasurementSEC : mIsLockZone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v0    # "prevLockZone":Z
    :cond_3
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    sub-long v2, p1, v4

    .line 821
    .local v2, "timeDelta":J
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    add-float/2addr v4, p3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    goto :goto_0

    .line 797
    .end local v2    # "timeDelta":J
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 806
    .restart local v0    # "prevLockZone":Z
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    goto :goto_2
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 855
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 856
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 857
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/high16 v10, -0x40800000    # -1.0f

    .line 880
    :goto_0
    return v10

    .line 860
    :cond_0
    const/4 v5, 0x0

    .line 861
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 862
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 863
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 864
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 865
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 866
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 872
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 873
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 874
    move-wide v2, v6

    .line 863
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 880
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    goto :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 884
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1368
    :cond_0
    return-void
.end method

.method private changeModeInSensorHubAutoBrightness(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 665
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 666
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x27

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 667
    return-void
.end method

.method private checkMarkerUserDetach(I)V
    .locals 3
    .param p1, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, -0x1

    .line 653
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    .line 655
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    .line 656
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    if-ne v0, v2, :cond_0

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    .line 659
    :cond_0
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1344
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1371
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1372
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1373
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    .line 1383
    const v0, 0x88b8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1394
    :cond_0
    return-void
.end method

.method private getAmbientLuxAndCandelaFromSensorHub()V
    .locals 5

    .prologue
    .line 1863
    const/4 v1, 0x2

    .line 1864
    .local v1, "mode":I
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 1865
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 1867
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[PAB] request AmbientLuxAndCandelaFromSensorHub"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1397
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1412
    :cond_1
    :goto_0
    return v0

    .line 1402
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1403
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1407
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1408
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurementSEC(JF)V

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    .line 780
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 894
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 895
    .local v0, "N":I
    move-wide v2, p1

    .line 896
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 897
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 902
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 900
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 896
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 906
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 907
    .local v0, "N":I
    move-wide v2, p1

    .line 908
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 909
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 914
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 912
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 908
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private notifySurfaceFlinger()V
    .locals 5

    .prologue
    .line 1781
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1782
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    const/16 v2, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1789
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1349
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1351
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 1352
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1353
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1354
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 1359
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1361
    return-void

    .line 1352
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private printLastLightSensorEvent()V
    .locals 4

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1450
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_0
    return-void
.end method

.method private sendLuxLevel(FZ)V
    .locals 9
    .param p1, "lux"    # F
    .param p2, "isAutoBrightnessEnabled"    # Z

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/4 v5, 0x6

    const v4, 0x471c4000    # 40000.0f

    .line 1675
    const/4 v1, 0x0

    .line 1676
    .local v1, "tconLuxLevel":I
    cmpg-float v2, p1, v6

    if-gez v2, :cond_a

    const/4 v1, 0x0

    .line 1679
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    if-eq v2, v1, :cond_0

    .line 1680
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 1681
    const-string v2, "/sys/class/tcon/tcon/lux"

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1685
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    if-eq v2, p2, :cond_1

    .line 1686
    iput-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 1687
    const-string v3, "/sys/class/tcon/tcon/auto_br"

    if-eqz p2, :cond_c

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1691
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevCommonLux:I

    float-to-int v3, p1

    if-eq v2, v3, :cond_2

    .line 1692
    float-to-int v2, p1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevCommonLux:I

    .line 1693
    const-string v2, "/sys/class/lcd/panel/lux"

    float-to-int v3, p1

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1697
    :cond_2
    const/4 v0, 0x0

    .line 1700
    .local v0, "autoBrightnessLevel":I
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v2, :cond_18

    .line 1701
    if-eqz p2, :cond_17

    .line 1702
    cmpg-float v2, p1, v7

    if-gez v2, :cond_d

    const/4 v0, 0x1

    .line 1717
    :cond_3
    :goto_2
    if-lt v0, v5, :cond_4

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    if-eqz v2, :cond_4

    .line 1718
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1734
    :cond_4
    :goto_3
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    if-nez v2, :cond_5

    if-lt v0, v5, :cond_5

    .line 1735
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 1736
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[DAB] HBM is not working cause user request "

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingAutoBrightness:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUsingVariableMaxManualBrightness:Z

    if-nez v2, :cond_6

    if-lt v0, v5, :cond_6

    .line 1746
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 1747
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevUsingVariableMaxManualBrightness:Z

    if-eqz v2, :cond_6

    .line 1748
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[DAB] HBM is not working in (manualmode) && (brightness < 255)"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevUsingVariableMaxManualBrightness:Z

    .line 1756
    :cond_6
    cmpl-float v2, p1, v4

    if-nez v2, :cond_7

    if-nez p2, :cond_7

    .line 1757
    const/4 v0, 0x6

    .line 1760
    :cond_7
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    if-eq v2, v0, :cond_9

    .line 1761
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 1762
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    if-eqz v2, :cond_8

    .line 1763
    const-string v2, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1767
    :cond_8
    const-string v2, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1775
    :cond_9
    return-void

    .line 1677
    .end local v0    # "autoBrightnessLevel":I
    :cond_a
    const v2, 0x469c4000    # 20000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1678
    :cond_b
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1687
    :cond_c
    const/4 v2, 0x0

    goto :goto_1

    .line 1703
    .restart local v0    # "autoBrightnessLevel":I
    :cond_d
    cmpg-float v2, p1, v6

    if-gez v2, :cond_e

    const/4 v0, 0x2

    goto :goto_2

    .line 1704
    :cond_e
    cmpg-float v2, p1, v8

    if-gez v2, :cond_f

    const/4 v0, 0x3

    goto :goto_2

    .line 1705
    :cond_f
    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_10

    const/4 v0, 0x4

    goto :goto_2

    .line 1706
    :cond_10
    const/high16 v2, 0x457a0000    # 4000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_11

    const/4 v0, 0x6

    goto :goto_2

    .line 1707
    :cond_11
    const v2, 0x459c4000    # 5000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_12

    const/4 v0, 0x7

    goto/16 :goto_2

    .line 1708
    :cond_12
    const v2, 0x461c4000    # 10000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_13

    const/16 v0, 0x8

    goto/16 :goto_2

    .line 1709
    :cond_13
    const v2, 0x469c4000    # 20000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_14

    const/16 v0, 0x9

    goto/16 :goto_2

    .line 1710
    :cond_14
    const v2, 0x46ea6000    # 30000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_15

    const/16 v0, 0xa

    goto/16 :goto_2

    .line 1711
    :cond_15
    cmpg-float v2, p1, v4

    if-gez v2, :cond_16

    const/16 v0, 0xb

    goto/16 :goto_2

    .line 1712
    :cond_16
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_3

    const/16 v0, 0xc

    goto/16 :goto_2

    .line 1714
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1723
    :cond_18
    if-eqz p2, :cond_1e

    .line 1724
    cmpg-float v2, p1, v7

    if-gez v2, :cond_19

    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1725
    :cond_19
    cmpg-float v2, p1, v6

    if-gez v2, :cond_1a

    const/4 v0, 0x2

    goto/16 :goto_3

    .line 1726
    :cond_1a
    cmpg-float v2, p1, v8

    if-gez v2, :cond_1b

    const/4 v0, 0x3

    goto/16 :goto_3

    .line 1727
    :cond_1b
    const v2, 0x459c4000    # 5000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1c

    const/4 v0, 0x4

    goto/16 :goto_3

    .line 1728
    :cond_1c
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1d

    const/4 v0, 0x5

    goto/16 :goto_3

    .line 1729
    :cond_1d
    const/4 v0, 0x6

    goto/16 :goto_3

    .line 1731
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 849
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 850
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 851
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 852
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "sensorSwitched":Z
    if-eqz p1, :cond_1

    .line 673
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    .line 674
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 682
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 685
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    const/4 v0, 0x1

    .line 711
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    if-eqz p1, :cond_3

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    .line 712
    return v0

    .line 692
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 693
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 694
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 695
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 696
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 697
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 702
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 705
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 707
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 694
    goto :goto_2

    :cond_3
    move v2, v3

    .line 711
    goto :goto_1
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 841
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 842
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 843
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 919
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 920
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 921
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 926
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v1, :cond_1

    .line 927
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v1

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long v8, v10, v12

    .line 929
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 981
    .end local v8    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 939
    .restart local v8    # "timeWhenSensorWarmedUp":J
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 940
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 946
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 949
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 950
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 951
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v0

    .line 953
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    cmp-long v1, v2, p1

    if-lez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    cmp-long v1, v4, p1

    if-gtz v1, :cond_4

    .line 955
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 963
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 964
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 965
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 967
    :cond_4
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 974
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    if-lez v1, :cond_5

    .line 980
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 974
    :cond_5
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v10, v1

    add-long v6, p1, v10

    goto :goto_1
.end method

.method private updateAmbientLuxSEC(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1050
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1052
    :cond_0
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1053
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1054
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1055
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1056
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1099
    :cond_1
    :goto_0
    return-void

    .line 1061
    :cond_2
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 1062
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_3

    .line 1063
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1064
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1066
    :cond_3
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1067
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 1068
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1069
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1071
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1077
    .end local v0    # "debounceTime":J
    :cond_5
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1078
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_6

    .line 1079
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1080
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1082
    :cond_6
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1083
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 1086
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1087
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1089
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1095
    .end local v0    # "debounceTime":J
    :cond_8
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_1

    .line 1096
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1097
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    goto :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 984
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 989
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 991
    .local v8, "gamma":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 993
    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    .line 995
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 1001
    .end local v6    # "adjGamma":F
    :cond_2
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    .line 1002
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v12

    .line 1003
    .local v12, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1005
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1007
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1009
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1017
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_4

    .line 1018
    move v9, v13

    .line 1019
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/MathUtils;->pow(FF)F

    move-result v13

    .line 1026
    .end local v9    # "in":F
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v11

    .line 1028
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 1035
    iput v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1036
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    goto :goto_0
.end method

.method private updateAutoBrightnessSEC(Z)V
    .locals 6
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1118
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_0

    .line 1119
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] no lux value from sensor manager"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    .line 1157
    :goto_0
    return-void

    .line 1127
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1128
    .local v1, "gamma":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1129
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1130
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1132
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 1134
    .local v0, "autoBrightnessAdj":F
    const/4 v0, 0x0

    .line 1139
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingAutoBrightness:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 1141
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    if-nez v3, :cond_1

    .line 1142
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] use ManualAutoBrightness is changed from false -> true"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    .line 1145
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    .line 1156
    :goto_1
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateFinalAutoBrightness(ZFFF)V

    goto :goto_0

    .line 1148
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    if-eqz v3, :cond_3

    .line 1149
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] use ManualAutoBrightness is changed from true -> false"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_3
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    goto :goto_1
.end method

.method private updateFinalAutoBrightness(ZFFF)V
    .locals 15
    .param p1, "sendUpdate"    # Z
    .param p2, "value"    # F
    .param p3, "gamma"    # F
    .param p4, "autoBrightnessAdj"    # F

    .prologue
    .line 1161
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_0

    :cond_0
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_10

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isManualAutoBrightnessValid()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1163
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    move/from16 v0, p4

    neg-float v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x3f600000    # -5.0f

    mul-float v2, v12, v13

    .line 1164
    .local v2, "adjLevel":F
    const/4 v3, 0x0

    .line 1166
    .local v3, "autoBrightnessLevelStepRatio":F
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_a

    .line 1167
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 1178
    :goto_0
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_d

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    move v13, v12

    :goto_1
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_e

    move v12, v2

    :goto_2
    invoke-static {v13, v12}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1179
    .local v1, "adjGamma":F
    mul-float p3, p3, v1

    .line 1185
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v12, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float v12, v12, p3

    iget-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, v13, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v13, v13

    add-float v10, v12, v13

    .line 1186
    .local v10, "valueFromGamma":F
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v7, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 1187
    .local v7, "minBrightnessStep":I
    float-to-int v12, v2

    mul-int/2addr v12, v7

    move/from16 v0, p2

    float-to-int v13, v0

    add-int v11, v12, v13

    .line 1188
    .local v11, "valueFromOffset":I
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-lez v12, :cond_1

    int-to-float v12, v11

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    cmpg-float v12, p4, v12

    if-gez v12, :cond_f

    int-to-float v12, v11

    cmpl-float v12, v10, v12

    if-lez v12, :cond_f

    .line 1190
    :cond_2
    int-to-float v0, v11

    move/from16 p2, v0

    .line 1202
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :goto_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v9

    .line 1204
    .local v9, "newScreenAutoBrightness":I
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    cmpl-float v12, p2, v12

    if-nez v12, :cond_3

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_4

    .line 1205
    :cond_3
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] updateAutoBrightnessSEC : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_11

    const-string v12, " (ebook)"

    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_4
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x471c4000    # 40000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    const/4 v8, 0x1

    .line 1211
    .local v8, "needHBM":Z
    :goto_5
    const/4 v4, 0x0

    .line 1214
    .local v4, "isHBMChanged":Z
    sget-boolean v12, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v12, :cond_5

    .line 1215
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x453b8000    # 3000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_13

    const/4 v8, 0x1

    .line 1218
    :cond_5
    :goto_6
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eq v12, v8, :cond_6

    .line 1219
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] HBM is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v8, :cond_14

    const-string v12, "Enabled"

    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ". mScreenAutoBrightness = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1223
    const/4 v4, 0x1

    .line 1225
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "high_brightness_mode_pms_enter"

    if-eqz v8, :cond_15

    const/4 v12, 0x1

    :goto_8
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1229
    :cond_6
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x469c4000    # 20000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    const/4 v6, 0x1

    .line 1230
    .local v6, "isTconMaxLevel":Z
    :goto_9
    const/4 v5, 0x0

    .line 1231
    .local v5, "isTconLevelChanged":Z
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    if-eq v12, v6, :cond_7

    .line 1232
    if-eqz v6, :cond_17

    .line 1233
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has gone over 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_a
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1239
    const/4 v5, 0x1

    .line 1242
    :cond_7
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v12, v9, :cond_8

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    if-eq v12, v13, :cond_18

    .line 1244
    :cond_8
    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1245
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1246
    if-eqz p1, :cond_9

    .line 1247
    const-string v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "mCallbacks.updateBrightness()"

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1249
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-boolean v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    invoke-direct {p0, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    .line 1261
    :cond_9
    :goto_b
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1262
    return-void

    .line 1170
    .end local v4    # "isHBMChanged":Z
    .end local v5    # "isTconLevelChanged":Z
    .end local v6    # "isTconMaxLevel":Z
    .end local v8    # "needHBM":Z
    .end local v9    # "newScreenAutoBrightness":I
    .restart local v2    # "adjLevel":F
    .restart local v3    # "autoBrightnessLevelStepRatio":F
    :cond_a
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v12, :cond_b

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v12, :cond_b

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v12, :cond_c

    :cond_b
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_c

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-gez v12, :cond_c

    .line 1172
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto/16 :goto_0

    .line 1174
    :cond_c
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    goto/16 :goto_0

    .line 1178
    :cond_d
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    move v13, v12

    goto/16 :goto_1

    :cond_e
    neg-float v12, v2

    goto/16 :goto_2

    .line 1192
    .restart local v1    # "adjGamma":F
    .restart local v7    # "minBrightnessStep":I
    .restart local v10    # "valueFromGamma":F
    .restart local v11    # "valueFromOffset":I
    :cond_f
    move/from16 p2, v10

    goto/16 :goto_3

    .line 1195
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :cond_10
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v12

    add-float p2, p2, v12

    goto/16 :goto_3

    .line 1205
    .restart local v9    # "newScreenAutoBrightness":I
    :cond_11
    const-string v12, ""

    goto/16 :goto_4

    .line 1210
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1215
    .restart local v4    # "isHBMChanged":Z
    .restart local v8    # "needHBM":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1219
    :cond_14
    const-string v12, "Disabled"

    goto/16 :goto_7

    .line 1225
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1229
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 1235
    .restart local v5    # "isTconLevelChanged":Z
    .restart local v6    # "isTconMaxLevel":Z
    :cond_17
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has dropped below 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1254
    :cond_18
    if-eqz p1, :cond_9

    if-nez v4, :cond_19

    if-eqz v5, :cond_9

    .line 1255
    :cond_19
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1256
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-boolean v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    invoke-direct {p0, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    goto :goto_b
.end method

.method private updatePersonalScreenAutoBrightnessTableLocked(Z)V
    .locals 8
    .param p1, "needUpdate"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x1

    .line 1828
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1829
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSetting:I

    .line 1830
    .local v1, "oldScreenBrightnessSetting":I
    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSettingDefault:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessSetting:I

    .line 1833
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    .line 1834
    .local v0, "oldScreenBrightnessModeSetting":I
    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    .line 1838
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    if-ne v3, v6, :cond_2

    .line 1839
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB] Settings changed. Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1843
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_1

    .line 1844
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    .line 1849
    :goto_0
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I

    .line 1859
    :cond_0
    :goto_1
    return-void

    .line 1846
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    const v6, 0xc350

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1851
    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    if-nez v3, :cond_0

    if-ne v0, v6, :cond_0

    .line 1853
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    if-eqz v3, :cond_3

    .line 1854
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    .line 1856
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1857
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[PAB] Setting : It\'s manual. So Reset Personal Auto Brightness."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 890
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public check_HBM_Detail()V
    .locals 4

    .prologue
    .line 469
    const-string v1, "/sys/class/backlight/panel/auto_brightness_level"

    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "sys_hbm_level":Ljava/lang/String;
    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 472
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 473
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = true, sys_hbm_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 476
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 477
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = false, sys_hbm_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configure(ZFZZZZFZZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "autoBrightnessForEbookOnly"    # Z
    .param p6, "useSystemPowerSaveMode"    # Z
    .param p7, "manualAdjustment"    # F
    .param p8, "settingAutoBrightness"    # Z
    .param p9, "UsingVariableMaxManualBrightness"    # Z
    .param p10, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 554
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "[DAB] mLightSensor is null."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iput-boolean p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 560
    invoke-direct {p0, p10}, Lcom/android/server/display/AutomaticBrightnessController;->checkMarkerUserDetach(I)V

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eq v1, p5, :cond_3

    .line 565
    iput-boolean p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 566
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 568
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->changeModeInSensorHubAutoBrightness(I)V

    .line 572
    :cond_2
    or-int/lit8 v0, v0, 0x1

    .line 575
    .end local v0    # "changed":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    if-ne v1, p1, :cond_4

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    cmpl-float v1, v1, p7

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingAutoBrightness:Z

    if-ne v1, p8, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUsingVariableMaxManualBrightness:Z

    if-eq v1, p9, :cond_5

    .line 580
    :cond_4
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    .line 581
    iput-boolean p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingAutoBrightness:Z

    .line 582
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUsingVariableMaxManualBrightness:Z

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevUsingVariableMaxManualBrightness:Z

    .line 583
    iput-boolean p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUsingVariableMaxManualBrightness:Z

    .line 585
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightness:Z

    .line 586
    or-int/lit8 v0, v0, 0x1

    .line 588
    :cond_5
    if-eqz p1, :cond_8

    if-nez p3, :cond_8

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 589
    .restart local v0    # "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 591
    if-eqz v0, :cond_6

    .line 592
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 594
    :cond_6
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    goto :goto_0

    :cond_7
    move v1, v3

    .line 568
    goto :goto_1

    .end local v0    # "changed":Z
    :cond_8
    move v2, v3

    .line 588
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 602
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 612
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 631
    const-string v0, "Automatic Brightness in Sensorhub:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedSensorHubAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientCandela="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedSensorHubLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentSensorHubSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentSensorHubSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->dump(Ljava/io/PrintWriter;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HBM_USER_ENABLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastHBM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SPECIFIC_HBM_FEATURE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public getAmbientLux()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 513
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 515
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method public isAmbientLuxValid()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isHbmEnabled()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    return v0
.end method

.method public isManualAutoBrightnessValid()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    return v0
.end method

.method public isPabUpdatePending()Z
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    monitor-exit v1

    return v0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 484
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 487
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 495
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to read file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    if-eqz v2, :cond_0

    .line 499
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 497
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_3

    .line 499
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 503
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 500
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 502
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 503
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 500
    :catch_2
    move-exception v0

    .line 502
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 499
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 503
    :cond_2
    :goto_4
    throw v5

    .line 500
    :catch_3
    move-exception v0

    .line 502
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to close file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 493
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public setOutdoorMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1670
    if-eqz p1, :cond_0

    const v0, 0x471c4000    # 40000.0f

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(FZ)V

    .line 1671
    return-void

    .line 1670
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
