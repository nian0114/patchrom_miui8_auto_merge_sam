.class public Lcom/android/settings/location/SatelliteView;
.super Landroid/app/Activity;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/SatelliteView$SetHandler;,
        Lcom/android/settings/location/SatelliteView$SatelliteDrawView;,
        Lcom/android/settings/location/SatelliteView$UserGpsSatellite;
    }
.end annotation


# static fields
.field private static ANIMATION_COUNT:I

.field private static ANIMATION_TIME:I

.field private static CIRCLE_RADIUS:I

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static ICON_RADIUS:I

.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mCenter_X:I

.field private static mCenter_Y:I

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/android/settings/location/SatelliteView$SetHandler;

.field private mIsWhiteTheme:Ljava/lang/Boolean;

.field mLocation:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mRect_gap:I

.field private mRect_text_size:I

.field private mRect_width:I

.field private mScrHeight:I

.field private mScrWidth:I

.field private mSpeed:D

.field private mTime:J

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    .line 59
    sput v2, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    .line 60
    sput v2, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    .line 62
    const/16 v0, 0x25

    sput v0, Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I

    .line 63
    const/16 v0, 0xc8

    sput v0, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    .line 65
    const/16 v0, 0x28

    sput v0, Lcom/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    .line 71
    sput-wide v4, Lcom/android/settings/location/SatelliteView;->mAltitude:D

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/location/SatelliteView;->mBearing:F

    .line 73
    sput-wide v4, Lcom/android/settings/location/SatelliteView;->mLongitude:D

    .line 74
    sput-wide v4, Lcom/android/settings/location/SatelliteView;->mLatitude:D

    .line 94
    sput v2, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/android/settings/location/SatelliteView;->mSvInformation:Ljava/lang/String;

    .line 98
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/location/SatelliteView;->azimuth:[F

    .line 99
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/location/SatelliteView;->elevation:[F

    .line 100
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/location/SatelliteView;->snr:[F

    .line 101
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/location/SatelliteView;->px:[I

    .line 102
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/location/SatelliteView;->py:[I

    .line 103
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/location/SatelliteView;->a:[D

    .line 104
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/location/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    .line 57
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    .line 58
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mScrHeight:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/location/SatelliteView;->mSpeed:D

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/location/SatelliteView;->mTime:J

    .line 77
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->ttff:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/location/SatelliteView;->mAccuracy:F

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    .line 84
    iput-object v3, p0, Lcom/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    .line 86
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->sv_list_mask:I

    .line 87
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    .line 342
    new-instance v0, Lcom/android/settings/location/SatelliteView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SatelliteView$2;-><init>(Lcom/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 389
    new-instance v0, Lcom/android/settings/location/SatelliteView$3;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SatelliteView$3;-><init>(Lcom/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 397
    new-instance v0, Lcom/android/settings/location/SatelliteView$4;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SatelliteView$4;-><init>(Lcom/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    .line 580
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_width:I

    .line 581
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_gap:I

    .line 582
    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_text_size:I

    .line 602
    return-void
.end method

.method private Min(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 334
    move v0, p1

    .line 335
    .local v0, "min":I
    if-le p1, p2, :cond_0

    .line 337
    move v0, p2

    .line 339
    :cond_0
    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/location/SatelliteView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings/location/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/location/SatelliteView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/location/SatelliteView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->calcRectDimension()V

    return-void
.end method

.method static synthetic access$1500()[F
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/location/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/location/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/location/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic access$1800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/location/SatelliteView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_gap:I

    return v0
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/android/settings/location/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/settings/location/SatelliteView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_width:I

    return v0
.end method

.method static synthetic access$202(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 48
    sput-wide p0, Lcom/android/settings/location/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic access$2100(Lcom/android/settings/location/SatelliteView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mScrHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/location/SatelliteView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_text_size:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/location/SatelliteView;)Lcom/android/settings/location/SatelliteView$SatelliteDrawView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/location/SatelliteView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    return v0
.end method

.method static synthetic access$300()D
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/android/settings/location/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 48
    sput-wide p0, Lcom/android/settings/location/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic access$400()D
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/android/settings/location/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 48
    sput-wide p0, Lcom/android/settings/location/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic access$500()F
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 48
    sput p0, Lcom/android/settings/location/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/location/SatelliteView;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/settings/location/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings/location/SatelliteView;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;
    .param p1, "x1"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/settings/location/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/settings/location/SatelliteView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings/location/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/location/SatelliteView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/settings/location/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/location/SatelliteView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SatelliteView;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/settings/location/SatelliteView;->mTime:J

    return-wide p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    return v0
.end method

.method private adajustBgForTheme()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    .line 171
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    return-void
.end method

.method private calcRectDimension()V
    .locals 3

    .prologue
    .line 585
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_width:I

    .line 586
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_gap:I

    .line 587
    iget v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_width:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings/location/SatelliteView;->mRect_text_size:I

    .line 589
    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect Gap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_gap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect TEXT SIZE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/location/SatelliteView;->mRect_text_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 124
    sput v8, Lcom/android/settings/location/SatelliteView;->mStartMode:I

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/location/SatelliteView;->mTime:J

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    .line 129
    sget-object v3, Lcom/android/settings/location/SatelliteView;->azimuth:[F

    aput v6, v3, v1

    .line 130
    sget-object v3, Lcom/android/settings/location/SatelliteView;->elevation:[F

    aput v6, v3, v1

    .line 131
    sget-object v3, Lcom/android/settings/location/SatelliteView;->snr:[F

    aput v6, v3, v1

    .line 133
    sget-object v3, Lcom/android/settings/location/SatelliteView;->a:[D

    aput-wide v10, v3, v1

    .line 134
    sget-object v3, Lcom/android/settings/location/SatelliteView;->b:[D

    aput-wide v10, v3, v1

    .line 135
    sget-object v3, Lcom/android/settings/location/SatelliteView;->px:[I

    aput v8, v3, v1

    .line 136
    sget-object v3, Lcom/android/settings/location/SatelliteView;->py:[I

    aput v8, v3, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/SatelliteView;->startGPS()V

    .line 139
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/settings/location/SatelliteView;->mTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 140
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 142
    const v3, 0x7f0d047d

    invoke-virtual {p0, v3}, Lcom/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    .line 143
    const v3, 0x7f0d047b

    invoke-virtual {p0, v3}, Lcom/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    .line 145
    const v3, 0x7f0e1667

    new-array v4, v12, [Ljava/lang/Object;

    sget-wide v6, Lcom/android/settings/location/SatelliteView;->mAltitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v6, p0, Lcom/android/settings/location/SatelliteView;->mSpeed:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    sget v6, Lcom/android/settings/location/SatelliteView;->mBearing:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "sSatelliteResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v3, Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    .line 150
    iget-object v3, p0, Lcom/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/location/SatelliteView$1;

    invoke-direct {v4, p0}, Lcom/android/settings/location/SatelliteView$1;-><init>(Lcom/android/settings/location/SatelliteView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->adajustBgForTheme()V

    .line 164
    return-void
.end method

.method private initDimension()V
    .locals 8

    .prologue
    .line 314
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 315
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/location/SatelliteView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 317
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    .line 318
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/settings/location/SatelliteView;->mScrHeight:I

    .line 320
    iget v2, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    .line 321
    iget v2, p0, Lcom/android/settings/location/SatelliteView;->mScrHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fdd4fdf3b645a1dL    # 0.458

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    .line 323
    sget v2, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    const-wide v4, 0x3fb5532617c1bda5L    # 0.0833

    iget v3, p0, Lcom/android/settings/location/SatelliteView;->mScrWidth:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    iget v4, p0, Lcom/android/settings/location/SatelliteView;->mScrHeight:I

    mul-int/lit8 v4, v4, 0x0

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/location/SatelliteView;->Min(II)I

    move-result v2

    sput v2, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    .line 325
    const v2, 0x7f0d047c

    invoke-virtual {p0, v2}, Lcom/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 326
    .local v1, "draw_layout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;-><init>(Lcom/android/settings/location/SatelliteView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    .line 327
    iget-object v2, p0, Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v2}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    .line 330
    return-void
.end method

.method private resetLocationInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 215
    sput-wide v2, Lcom/android/settings/location/SatelliteView;->mLongitude:D

    .line 216
    sput-wide v2, Lcom/android/settings/location/SatelliteView;->mLatitude:D

    .line 217
    sput-wide v2, Lcom/android/settings/location/SatelliteView;->mAltitude:D

    .line 218
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/location/SatelliteView;->mBearing:F

    .line 219
    iput-wide v2, p0, Lcom/android/settings/location/SatelliteView;->mSpeed:D

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/location/SatelliteView;->ttff:I

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v1, Lcom/android/settings/location/SatelliteView$SetHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/location/SatelliteView$SetHandler;-><init>(Lcom/android/settings/location/SatelliteView;)V

    iput-object v1, p0, Lcom/android/settings/location/SatelliteView;->mHandler:Lcom/android/settings/location/SatelliteView$SetHandler;

    .line 110
    const v1, 0x7f0401c3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/SatelliteView;->setContentView(I)V

    .line 112
    const v1, 0x7f0d047a

    invoke-virtual {p0, v1}, Lcom/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->initDimension()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->init()V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/location/SatelliteView;->stopGPS()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v0}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->destroyDrawingCache()V

    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 672
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mHandler:Lcom/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mHandler:Lcom/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    .line 664
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 665
    return-void
.end method

.method showSVStatus()V
    .locals 14

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "i":I
    const/4 v0, 0x0

    .line 251
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "mSatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/location/SatelliteView$UserGpsSatellite;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 253
    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v1, v6, :cond_2

    .line 255
    iget v6, p0, Lcom/android/settings/location/SatelliteView;->sv_list_mask:I

    const/4 v7, 0x1

    shl-int/2addr v7, v1

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    .line 253
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v6, p0, Lcom/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v4, v6, v1

    .line 260
    .local v4, "sat":Landroid/location/GpsSatellite;
    new-instance v6, Lcom/android/settings/location/SatelliteView$UserGpsSatellite;

    invoke-direct {v6, v4, v0}, Lcom/android/settings/location/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 263
    sget-object v6, Lcom/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    const-string v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ShowSVStatus: Number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "snr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "azimuth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "elevation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v6, "GPS_SATELLITE_VIEW"

    const-string v7, "*******************************"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 273
    .end local v4    # "sat":Landroid/location/GpsSatellite;
    :cond_2
    new-array v5, v0, [Lcom/android/settings/location/SatelliteView$UserGpsSatellite;

    .line 274
    .local v5, "sorted_list":[Lcom/android/settings/location/SatelliteView$UserGpsSatellite;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 276
    const/16 v6, 0xc

    if-le v0, v6, :cond_4

    .line 278
    const/16 v6, 0xc

    sput v6, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    .line 285
    :goto_2
    const/4 v1, 0x0

    :goto_3
    sget v6, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v1, v6, :cond_5

    .line 287
    aget-object v6, v5, v1

    invoke-virtual {v6}, Lcom/android/settings/location/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v4

    .line 289
    .restart local v4    # "sat":Landroid/location/GpsSatellite;
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    .line 291
    sget-object v6, Lcom/android/settings/location/SatelliteView;->azimuth:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v7

    aput v7, v6, v1

    .line 292
    sget-object v6, Lcom/android/settings/location/SatelliteView;->elevation:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    aput v7, v6, v1

    .line 293
    sget-object v6, Lcom/android/settings/location/SatelliteView;->snr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    aput v7, v6, v1

    .line 295
    sget-object v6, Lcom/android/settings/location/SatelliteView;->a:[D

    sget-object v7, Lcom/android/settings/location/SatelliteView;->elevation:[F

    aget v7, v7, v1

    float-to-double v8, v7

    const-wide v10, 0x3f91df3300de4c51L    # 0.017453

    mul-double/2addr v8, v10

    aput-wide v8, v6, v1

    .line 296
    sget-object v6, Lcom/android/settings/location/SatelliteView;->b:[D

    sget-object v7, Lcom/android/settings/location/SatelliteView;->azimuth:[F

    aget v7, v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3f91df3300de4c51L    # 0.017453

    mul-double/2addr v8, v10

    aput-wide v8, v6, v1

    .line 298
    sget-object v6, Lcom/android/settings/location/SatelliteView;->px:[I

    sget v7, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    int-to-double v8, v7

    sget v7, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v10, v7

    sget-object v7, Lcom/android/settings/location/SatelliteView;->a:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sget-object v7, Lcom/android/settings/location/SatelliteView;->b:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v7, v8

    aput v7, v6, v1

    .line 299
    sget-object v6, Lcom/android/settings/location/SatelliteView;->py:[I

    sget v7, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    int-to-double v8, v7

    sget v7, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v10, v7

    sget-object v7, Lcom/android/settings/location/SatelliteView;->a:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sget-object v7, Lcom/android/settings/location/SatelliteView;->b:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v7, v8

    aput v7, v6, v1

    .line 301
    sget-object v6, Lcom/android/settings/location/SatelliteView;->px:[I

    aget v6, v6, v1

    sget v7, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v8, Lcom/android/settings/location/SatelliteView;->py:[I

    aget v8, v8, v1

    sget v9, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sget v8, Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 303
    sget-object v6, Lcom/android/settings/location/SatelliteView;->px:[I

    sget v7, Lcom/android/settings/location/SatelliteView;->mCenter_X:I

    aput v7, v6, v1

    .line 304
    sget-object v6, Lcom/android/settings/location/SatelliteView;->py:[I

    sget v7, Lcom/android/settings/location/SatelliteView;->mCenter_Y:I

    aput v7, v6, v1

    .line 285
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 282
    .end local v4    # "sat":Landroid/location/GpsSatellite;
    :cond_4
    sput v0, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    goto/16 :goto_2

    .line 308
    :cond_5
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 309
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x3

    iput v6, v3, Landroid/os/Message;->what:I

    .line 310
    iget-object v6, p0, Lcom/android/settings/location/SatelliteView;->mHandler:Lcom/android/settings/location/SatelliteView$SetHandler;

    sget v7, Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    int-to-long v8, v7

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    return-void
.end method

.method startGPS()V
    .locals 6

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->resetLocationInfo()V

    .line 176
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/location/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    .line 184
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 189
    return-void
.end method

.method stopGPS()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 194
    iput-object v5, p0, Lcom/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    .line 195
    iput-object v5, p0, Lcom/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    .line 196
    sput v4, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    .line 198
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView;->resetLocationInfo()V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 202
    sget-object v1, Lcom/android/settings/location/SatelliteView;->azimuth:[F

    aput v3, v1, v0

    .line 203
    sget-object v1, Lcom/android/settings/location/SatelliteView;->elevation:[F

    aput v3, v1, v0

    .line 204
    sget-object v1, Lcom/android/settings/location/SatelliteView;->snr:[F

    aput v3, v1, v0

    .line 206
    sget-object v1, Lcom/android/settings/location/SatelliteView;->a:[D

    aput-wide v6, v1, v0

    .line 207
    sget-object v1, Lcom/android/settings/location/SatelliteView;->b:[D

    aput-wide v6, v1, v0

    .line 208
    sget-object v1, Lcom/android/settings/location/SatelliteView;->px:[I

    aput v4, v1, v0

    .line 209
    sget-object v1, Lcom/android/settings/location/SatelliteView;->py:[I

    aput v4, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method
