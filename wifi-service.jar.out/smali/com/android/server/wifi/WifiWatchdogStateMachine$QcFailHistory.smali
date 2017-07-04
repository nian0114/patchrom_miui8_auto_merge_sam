.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1020
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 1022
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 1023
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 1024
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 1025
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1026
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1027
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 1028
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 1029
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 1030
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 1031
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 1032
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 1034
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 1036
    return-void
.end method
