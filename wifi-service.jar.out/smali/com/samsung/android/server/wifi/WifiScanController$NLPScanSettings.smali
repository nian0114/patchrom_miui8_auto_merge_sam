.class Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NLPScanSettings"
.end annotation


# instance fields
.field public mScanDelayMillis:J

.field public mScanType:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiScanController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V
    .locals 3
    .param p2, "scanType"    # I
    .param p3, "scanDelay"    # J

    .prologue
    .line 602
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    .line 603
    iput p2, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    .line 604
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    .line 605
    return-void
.end method
