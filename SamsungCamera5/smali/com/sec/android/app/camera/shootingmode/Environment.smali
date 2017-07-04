.class public Lcom/sec/android/app/camera/shootingmode/Environment;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;
    }
.end annotation


# static fields
.field private static final ACCU_SETTING_URI:Landroid/net/Uri;

.field private static final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String; = "CHECK_CURRENT_CITY_LOCATION"

.field private static final CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field protected static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final ENVIRONMENT_INFO_GROUP_HEIGHT:I

.field private static final ENVIRONMENT_INFO_GROUP_WIDTH:I

.field private static final ENVIRONMENT_INFO_ICON_WIDTH:F

.field private static final ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

.field private static final ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

.field private static final ENVIRONMENT_INFO_SIDE_MARGIN:F

.field private static final ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

.field private static final ENVIRONMENT_INFO_TEXT_HEIGHT:F

.field private static final ENVIRONMENT_INFO_TEXT_RIGHT_MARGIN:F

.field private static final ENVIRONMENT_INFO_TEXT_SIZE:F

.field private static final ENVIRONMENT_INFO_TEXT_WIDTH:F

.field private static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field private static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field private static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field private static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field private static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field private static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field private static final MY_WEATHER_INFO_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "Environment"


# instance fields
.field private ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private mAltitude:Ljava/lang/String;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHumidity:Ljava/lang/String;

.field private mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLocation:Ljava/lang/String;

.field private mLocationImage:Lcom/samsung/android/glview/GLImage;

.field private mLocationText:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mTempScale:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mTemperatureText:Lcom/samsung/android/glview/GLText;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mWeatherImage:Lcom/samsung/android/glview/GLImage;

.field private mWeatherImageID:I

.field private mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Environment;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Environment;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 67
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    .line 68
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_HEIGHT:I

    .line 69
    const v0, 0x7f0900ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    .line 70
    const v0, 0x7f0900e7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_HEIGHT:F

    .line 71
    const v0, 0x7f0900e8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_RIGHT_MARGIN:F

    .line 72
    const v0, 0x7f0900e6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

    .line 73
    const v0, 0x7f0900e2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_ICON_WIDTH:F

    .line 74
    const v0, 0x7f0900e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    .line 75
    const v0, 0x7f0900e3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    .line 76
    const v0, 0x7f0900e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_SIDE_MARGIN:F

    .line 77
    sget v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_ICON_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    .line 78
    sget v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_HEIGHT:F

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    .line 79
    const v0, 0x7f0900e9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "Location=\"%s\""

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cityId:current"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 89
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 90
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 91
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 92
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 94
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    .line 95
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImageID:I

    .line 97
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTempScale:Ljava/lang/String;

    .line 100
    const-string v0, "31"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mAltitude:Ljava/lang/String;

    .line 108
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 109
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 110
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 111
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 112
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 113
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCPName:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Environment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Environment$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Environment;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Environment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Environment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Environment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Environment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Environment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Environment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Environment;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private addSEFInfo()V
    .locals 8

    .prologue
    .line 322
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "LocalizedName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getSEFLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v4, "Altitude"

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getSEFAltitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v4, "Temperature"

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getSEFTemperature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v4, "Unit"

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getSEFTempScale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v4, "RelativeHumidity"

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getSEFHumidity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    const-string v4, "Environment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 339
    .local v2, "sef_byte":[B
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Tag_Shot_Info"

    const/16 v6, 0x990

    const/4 v7, 0x1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 342
    const-string v4, "Environment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEF_DATA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    return-void

    .line 329
    .end local v2    # "sef_byte":[B
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Environment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject data writing error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCityName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 347
    const-string v6, "Secho 1-dong"

    .line 348
    .local v6, "cityname":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 351
    const/4 v7, 0x0

    .line 353
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Environment;->CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 354
    if-eqz v7, :cond_0

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 357
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    if-eqz v7, :cond_1

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 372
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 360
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 361
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    if-eqz v7, :cond_1

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 364
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    if-eqz v7, :cond_1

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 367
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getCurrentHumidity()Ljava/lang/String;
    .locals 9

    .prologue
    .line 376
    const-string v8, "60"

    .line 377
    .local v8, "humidity":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 379
    const/4 v6, 0x0

    .line 381
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Environment;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_HUM"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    if-eqz v6, :cond_0

    .line 383
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 386
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "humidity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v8

    .line 387
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 388
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 392
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 393
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 395
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 396
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    if-eqz v6, :cond_1

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 399
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getCurrentWeatherIconNum()I
    .locals 9

    .prologue
    .line 409
    const/4 v8, 0x1

    .line 410
    .local v8, "weatherIconNum":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 412
    const/4 v6, 0x0

    .line 414
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Environment;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_ICON_NUM"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 415
    if-eqz v6, :cond_0

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 419
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weatherIconNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 420
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 425
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 426
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    if-eqz v6, :cond_1

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 428
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 429
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    if-eqz v6, :cond_1

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 432
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getCurrentWeatherTemp()Ljava/lang/String;
    .locals 9

    .prologue
    .line 442
    const-string v8, "14"

    .line 443
    .local v8, "temperature":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 445
    const/4 v6, 0x0

    .line 447
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Environment;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_TEMP"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    if-eqz v6, :cond_0

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 452
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v8

    .line 453
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 458
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 459
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    if-eqz v6, :cond_1

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 461
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 462
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 465
    if-eqz v6, :cond_1

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 465
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getCurrentWeatherTempScale()Ljava/lang/String;
    .locals 9

    .prologue
    .line 475
    const/4 v8, 0x0

    .line 476
    .local v8, "tempeScale":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 477
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 478
    const/4 v6, 0x0

    .line 480
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 481
    if-eqz v6, :cond_0

    .line 482
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 485
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempeScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-nez v8, :cond_3

    const-string v1, "F"

    :goto_2
    return-object v1

    .line 486
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 487
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 491
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 492
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    if-eqz v6, :cond_1

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 494
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 495
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 498
    if-eqz v6, :cond_1

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 498
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 504
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v1, "C"

    goto :goto_2
.end method

.method private getSEFAltitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mAltitude:Ljava/lang/String;

    return-object v0
.end method

.method private getSEFHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method private getSEFLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method private getSEFTempScale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTempScale:Ljava/lang/String;

    return-object v0
.end method

.method private getSEFTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method private getWeatherIconImage(I)I
    .locals 4
    .param p1, "iconNum"    # I

    .prologue
    const v0, 0x7f0202a1

    .line 528
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherIconImage iconNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 569
    :goto_0
    :pswitch_0
    return v0

    .line 533
    :pswitch_1
    const v0, 0x7f020299

    goto :goto_0

    .line 535
    :pswitch_2
    const v0, 0x7f020292

    goto :goto_0

    .line 537
    :pswitch_3
    const v0, 0x7f02029d

    goto :goto_0

    .line 539
    :pswitch_4
    const v0, 0x7f020295

    goto :goto_0

    .line 541
    :pswitch_5
    const v0, 0x7f02029f

    goto :goto_0

    .line 543
    :pswitch_6
    const v0, 0x7f02029b

    goto :goto_0

    .line 545
    :pswitch_7
    const v0, 0x7f0202a2

    goto :goto_0

    .line 547
    :pswitch_8
    const v0, 0x7f02029c

    goto :goto_0

    .line 549
    :pswitch_9
    const v0, 0x7f020294

    goto :goto_0

    .line 551
    :pswitch_a
    const v0, 0x7f02029a

    goto :goto_0

    .line 553
    :pswitch_b
    const v0, 0x7f0202a0

    goto :goto_0

    .line 555
    :pswitch_c
    const v0, 0x7f02029e

    goto :goto_0

    .line 557
    :pswitch_d
    const v0, 0x7f020297

    goto :goto_0

    .line 559
    :pswitch_e
    const v0, 0x7f020296

    goto :goto_0

    .line 561
    :pswitch_f
    const v0, 0x7f020293

    goto :goto_0

    .line 563
    :pswitch_10
    const v0, 0x7f0202a3

    goto :goto_0

    .line 565
    :pswitch_11
    const v0, 0x7f020291

    goto :goto_0

    .line 567
    :pswitch_12
    const v0, 0x7f020298

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setIconNumber(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setCurrentTemperature(F)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setTempScale(I)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setHighTemperature(F)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setLowTemperature(F)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->setTrusted(I)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;->dump()V

    .line 582
    return-void
.end method

.method private registerWeatherInfoReceiver()V
    .locals 3

    .prologue
    .line 585
    const-string v1, "Environment"

    const-string v2, "registerWeatherInfoReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->requestWeatherDataSync()V

    .line 594
    return-void
.end method

.method private requestWeatherDataSync()V
    .locals 3

    .prologue
    .line 597
    const-string v1, "Environment"

    const-string v2, "requestWeatherDataSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 603
    const-string v1, "Environment"

    const-string v2, "SendBroadcast() from Camera to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method

.method private toDigitString(I)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # I

    .prologue
    .line 607
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 608
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 609
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_0

    .line 613
    const-string v2, ""

    .line 614
    .local v2, "formatter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    const-string v4, "Environment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toDigitString() number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 617
    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateWeatherInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    const-string v0, "Environment"

    const-string v1, "updateWeatherInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getCityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocation:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLocationAltitude()I

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLocationAltitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mAltitude:Ljava/lang/String;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mAltitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getCurrentWeatherIconNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getWeatherIconImage(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImageID:I

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImageID:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 636
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getCurrentWeatherTemp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperature:Ljava/lang/String;

    .line 637
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getCurrentWeatherTempScale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTempScale:Ljava/lang/String;

    .line 639
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->getCurrentHumidity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mHumidity:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTempScale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mHumidity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 644
    return-void
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 150
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    const/16 v0, 0xc

    aput v0, v2, v4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xab

    :goto_0
    aput v0, v2, v3

    const/4 v0, 0x2

    aput v5, v2, v0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/Environment$WeatherInfo;

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->registerWeatherInfoReceiver()V

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->updateWeatherInfo()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 161
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 170
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 175
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 176
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 178
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 182
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_HEIGHT:F

    const-string v6, "Secho 1-dong / 31ft"

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationText:Lcom/samsung/android/glview/GLText;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 186
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, 0x7f020214

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 197
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v3, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 201
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_HEIGHT:F

    const-string v6, "14\u00b0F / 60%"

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 205
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Environment;->getWeatherIconImage(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Environment;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Environment;->ENVIRONMENT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 219
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 223
    const-string v0, "sef_file_type"

    const/16 v1, 0x990

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Environment;->addSEFInfo()V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 296
    const-string v0, "Environment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 303
    :cond_1
    if-nez p1, :cond_3

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 314
    :cond_3
    :goto_0
    return-void

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Environment;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method
