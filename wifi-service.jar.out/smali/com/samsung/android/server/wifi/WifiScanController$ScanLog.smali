.class public Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanLog"
.end annotation


# static fields
.field public static THRESHOULD_COUNT_FOR_BIG_DATA:I

.field public static TIMEOUT_FOR_BIGDATA:J


# instance fields
.field public mCount:I

.field public mCountForBigdata:I

.field public mLast:Ljava/lang/String;

.field public mLastTime:J

.field public mPackageName:Ljava/lang/String;

.field public mPeriod:D

.field public mStart:Ljava/lang/String;

.field public mStartTime:J

.field public mStartTimeForBigdata:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    const-wide/32 v0, 0x124f80

    sput-wide v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->TIMEOUT_FOR_BIGDATA:J

    .line 122
    const/16 v0, 0x32

    sput v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->THRESHOULD_COUNT_FOR_BIG_DATA:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJJLjava/lang/String;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "period"    # J
    .param p5, "start_time"    # J
    .param p7, "last_time"    # J
    .param p9, "start"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPackageName:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    .line 138
    long-to-double v0, p3

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    .line 139
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTime:J

    .line 140
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    .line 141
    iput-object p9, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStart:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLast:Ljava/lang/String;

    .line 143
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    .line 144
    iput p2, p0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    .line 145
    return-void
.end method
