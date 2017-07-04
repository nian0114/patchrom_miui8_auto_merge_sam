.class final Lcom/android/server/cover/NfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$1;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final RESPONSE_STATUS_POS:I = 0x2

.field private static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field private static final SYSTEM_EVENT_TOUCH_RESPONSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCoverEventsDisabledForSamsungPay:Z

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 66
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 134
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 135
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 151
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 159
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/cover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/cover/NfcLedCoverController;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/NfcLedCoverController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/NfcLedCoverController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1088
    if-nez p2, :cond_0

    .line 1089
    new-array p2, v5, [B

    .end local p2    # "data":[B
    aput-byte v6, p2, v6

    .line 1091
    .restart local p2    # "data":[B
    :cond_0
    const/4 v2, 0x5

    .line 1092
    .local v2, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v1

    .line 1093
    .local v1, "ledPacketLength":I
    add-int v3, v2, v1

    .line 1094
    .local v3, "size":I
    add-int v4, v2, v1

    new-array v0, v4, [B

    .line 1097
    .local v0, "genData":[B
    aput-byte v6, v0, v6

    .line 1098
    const/16 v4, -0x5e

    aput-byte v4, v0, v5

    .line 1099
    const/4 v4, 0x2

    aput-byte v6, v0, v4

    .line 1100
    const/4 v4, 0x3

    aput-byte v6, v0, v4

    .line 1102
    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 1105
    const/4 v4, 0x5

    const/16 v5, 0x10

    aput-byte v5, v0, v4

    .line 1106
    const/4 v4, 0x6

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 1107
    const/4 v4, 0x7

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 1108
    const/16 v4, 0x8

    array-length v5, p2

    invoke-static {p2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1109
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    const/4 v6, -0x1

    aput-byte v6, v0, v5

    aput-byte v6, v0, v4

    .line 1112
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-object v0
.end method

.method private clearOngoingEvent()V
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 964
    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 1416
    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 1418
    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1420
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1423
    :cond_0
    return-void
.end method

.method private getCallDuration()[B
    .locals 14

    .prologue
    .line 1446
    const/4 v6, 0x4

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .line 1447
    .local v0, "duration":[B
    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1460
    :goto_0
    return-object v0

    .line 1450
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 1452
    .local v4, "time":J
    const/4 v1, 0x0

    .line 1453
    .local v1, "locale":Ljava/util/Locale;
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x64

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1454
    .local v2, "minutes":[B
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1455
    .local v3, "seconds":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1456
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1457
    const/4 v6, 0x2

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1458
    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    goto :goto_0

    .line 1446
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 691
    const/4 v4, 0x0

    .line 692
    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 694
    .local v6, "locale":Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 695
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 696
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 697
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 699
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 700
    .local v5, "hours":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 702
    .local v7, "minutes":I
    if-eqz v0, :cond_0

    .line 705
    const-string v8, "%02d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 718
    :goto_0
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8

    .line 708
    :cond_0
    rem-int/lit8 v5, v5, 0xc

    .line 709
    if-nez v5, :cond_1

    .line 710
    const/16 v5, 0xc

    .line 714
    :cond_1
    const-string v8, "%2d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 1121
    const/4 v0, 0x5

    .line 1122
    .local v0, "len":I
    if-eqz p1, :cond_0

    .line 1123
    array-length v1, p1

    add-int/2addr v0, v1

    .line 1129
    :goto_0
    return v0

    .line 1126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1516
    sparse-switch p1, :sswitch_data_0

    .line 1540
    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1520
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1521
    aget-byte v1, p2, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1529
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1530
    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1532
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1534
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1536
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1530
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 565
    const/4 v0, 0x2

    .line 567
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 568
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 569
    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 570
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 573
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    return-void
.end method

.method private handleClearOngoingEvent(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1282
    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    .line 1283
    const/4 p1, 0x3

    .line 1285
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_2

    .line 1286
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 1288
    :cond_2
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 283
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 298
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 301
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 302
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 1291
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1294
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1296
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1297
    .local v2, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    .line 1298
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_0

    .line 1301
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1315
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1321
    :cond_2
    :goto_2
    return-void

    .line 1302
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 1303
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1305
    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1306
    .restart local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    .line 1307
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_3

    .line 1310
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1312
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 11
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 995
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 997
    if-eqz p3, :cond_3

    const/16 v6, 0x12

    if-eq p1, v6, :cond_3

    array-length v6, p3

    const/4 v7, 0x1

    if-lt v6, v7, :cond_3

    .line 998
    const/4 v0, 0x0

    .line 1001
    .local v0, "doRetry":Z
    aget-byte v6, p3, v9

    sparse-switch v6, :sswitch_data_0

    .line 1013
    const-string v6, "CoverManager.NfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transceive error - unknown error value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_0
    if-nez v0, :cond_0

    array-length v6, p3

    if-le v6, v10, :cond_0

    aget-byte v6, p3, v10

    const/16 v7, -0x30

    if-ne v6, v7, :cond_0

    .line 1024
    array-length v6, p3

    new-array v5, v6, [B

    .line 1025
    .local v5, "tmp":[B
    array-length v6, p3

    invoke-static {p3, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1026
    const/16 v6, -0x2f

    aput-byte v6, v5, v10

    .line 1030
    invoke-direct {p0, p1, v5}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v0

    .line 1033
    .end local v5    # "tmp":[B
    :cond_0
    if-eqz v0, :cond_2

    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v7, 0xd

    if-ge v6, v7, :cond_2

    .line 1034
    const-string v6, "CoverManager.NfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Repeat command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1041
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v4

    .line 1043
    .local v4, "stopCoverResult":Z
    const-string v6, "CoverManager.NfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stop result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1046
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1047
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1048
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1049
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1050
    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1082
    .end local v0    # "doRetry":Z
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "stopCoverResult":Z
    :cond_1
    :goto_1
    return-void

    .line 1010
    .restart local v0    # "doRetry":Z
    :sswitch_0
    const/4 v0, 0x1

    .line 1011
    goto/16 :goto_0

    .line 1053
    :cond_2
    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1054
    const-string v6, "CoverManager.NfcLedCoverController"

    const-string v7, "Could not transceive command to cover so turn off led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .end local v0    # "doRetry":Z
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1059
    const-string v6, "CoverManager.NfcLedCoverController"

    const-string v7, "Sent done intent, fail transceive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    sparse-switch p1, :sswitch_data_1

    .line 1069
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    .line 1071
    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1072
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1074
    :try_start_0
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1075
    iget-object v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1077
    :catch_0
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 1064
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :sswitch_1
    iget-boolean v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v6, :cond_4

    .line 1065
    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_2

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_0
        -0x4e -> :sswitch_0
        -0x20 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1061
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 589
    const/4 v0, 0x4

    .line 591
    .local v0, "event":I
    const-string/jumbo v4, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 593
    .local v2, "lcdOffDisabledByCover":Z
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v4, v2, :cond_0

    .line 594
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 596
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v4, :cond_0

    .line 597
    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 601
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 602
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 603
    .local v3, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v3, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 604
    invoke-virtual {v3, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 607
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1137
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_1

    .line 1139
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1143
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1151
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_2

    .line 1152
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 1156
    :cond_2
    const/16 v4, 0x11

    new-array v5, v8, [B

    aput-byte v7, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 1157
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 1159
    .local v3, "returnData":[B
    :try_start_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    .line 1160
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1167
    :cond_3
    :goto_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    .line 1168
    const/4 v4, 0x5

    new-array v3, v4, [B

    .line 1169
    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    .line 1170
    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    .line 1171
    const/16 v4, 0x11

    aput-byte v4, v3, v11

    .line 1172
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_6

    .line 1173
    aput-byte v8, v3, v10

    .line 1183
    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1185
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_8

    const-string v4, "accept"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1190
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1195
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1196
    .local v1, "msg":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    .line 1198
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1200
    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1201
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1204
    :try_start_3
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1207
    :catch_1
    move-exception v0

    .line 1208
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1162
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1174
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_7

    .line 1175
    aput-byte v9, v3, v10

    goto :goto_2

    .line 1177
    :cond_7
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    aput-byte v9, v3, v10

    goto/16 :goto_2

    .line 1185
    :cond_8
    const-string/jumbo v4, "reject"

    goto :goto_3

    .line 1192
    :catch_3
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 1212
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1214
    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 1215
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1216
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 577
    const/4 v0, 0x3

    .line 579
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 580
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 581
    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 582
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 585
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 766
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 769
    :try_start_0
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v9, 0x4

    if-ne p1, v9, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 777
    if-eqz p2, :cond_1

    array-length v9, p2

    if-lez v9, :cond_1

    const/4 v9, 0x0

    aget-byte v9, p2, v9

    if-nez v9, :cond_1

    .line 779
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 783
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 951
    :goto_0
    return-void

    .line 786
    :cond_0
    :try_start_1
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 p1, 0x12

    .line 794
    :cond_1
    const v9, 0xfffe

    if-ne p1, v9, :cond_5

    .line 795
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    .line 796
    const/4 p1, 0x3

    .line 875
    :goto_1
    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 876
    .local v6, "previousCommand":I
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 879
    const/4 v9, 0x3

    if-eq p1, v9, :cond_2

    const/16 v9, 0xd

    if-eq p1, v9, :cond_2

    const/16 v9, 0xe

    if-eq p1, v9, :cond_2

    const/4 v9, 0x2

    if-eq p1, v9, :cond_2

    const/16 v9, 0x14

    if-ne p1, v9, :cond_3

    .line 883
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->setOngoingEvent(I[B)V

    .line 888
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 937
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 938
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 941
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 949
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 797
    .end local v6    # "previousCommand":I
    :cond_5
    const/16 v9, 0x12

    if-ne p1, v9, :cond_6

    :try_start_3
    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v9, :cond_6

    .line 799
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 802
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 949
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 806
    :cond_6
    :try_start_4
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, 0x0

    .line 810
    .local v0, "coverStarted":Z
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v0

    .line 812
    if-nez v0, :cond_8

    .line 813
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v9, v10, :cond_7

    .line 814
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 817
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x4

    iput v9, v5, Landroid/os/Message;->what:I

    .line 818
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 819
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 821
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 827
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v8

    .line 829
    .local v8, "stopCoverResult":Z
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 949
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "stopCoverResult":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 832
    :cond_7
    :try_start_5
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 834
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 836
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, fail start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 949
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 842
    .restart local v0    # "coverStarted":Z
    :cond_8
    const/4 v9, 0x0

    :try_start_6
    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 846
    .local v3, "genData":[B
    const/4 v7, 0x0

    .line 848
    .local v7, "returnValue":[B
    :try_start_7
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9, v3}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v7

    .line 849
    if-eqz v7, :cond_9

    .line 850
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 856
    :cond_9
    :goto_5
    :try_start_8
    invoke-direct {p0, p1, v7}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v9

    if-nez v9, :cond_b

    .line 857
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0, p1, p2, v7}, Lcom/android/server/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 860
    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v9, :cond_a

    .line 949
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 852
    :catch_0
    move-exception v2

    .line 853
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 863
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .restart local v1    # "doneIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 868
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, sucess"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    goto/16 :goto_1

    .line 891
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    .end local v3    # "genData":[B
    .end local v7    # "returnValue":[B
    .restart local v6    # "previousCommand":I
    :sswitch_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 895
    :sswitch_1
    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v9, :cond_c

    .line 896
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 900
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 901
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v5, Landroid/os/Message;->what:I

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    .line 903
    .local v4, "listenerType":I
    if-gez v4, :cond_d

    .line 904
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 949
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 908
    :cond_d
    :try_start_a
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_e

    .line 909
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 914
    :cond_e
    :goto_6
    :try_start_b
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 917
    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v9, :cond_f

    .line 918
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 923
    :goto_7
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 911
    :catch_1
    move-exception v2

    .line 912
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 921
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_7

    .line 928
    .end local v4    # "listenerType":I
    .end local v5    # "msg":Landroid/os/Message;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    .line 929
    invoke-direct {p0, v6}, Lcom/android/server/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    .line 934
    :sswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto/16 :goto_2

    .line 943
    :catch_2
    move-exception v2

    .line 944
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 627
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 629
    new-array v0, v3, [B

    .line 630
    .local v0, "data":[B
    aput-byte v2, v0, v2

    .line 632
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_1

    .line 635
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    const/16 v2, 0x12

    invoke-virtual {p0, v2, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 676
    :goto_1
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 648
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOngoingEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 655
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v2, :cond_5

    .line 658
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 659
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    if-nez v2, :cond_3

    .line 660
    :cond_2
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 662
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :goto_2
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 664
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 673
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 667
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v3, v3, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_2

    .line 670
    :cond_5
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private isFinishedTouchReply([B)Z
    .locals 5
    .param p1, "returnData"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1270
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v4

    if-eq v1, v0, :cond_0

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleMissedEvent([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x30

    .line 467
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 976
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResponse(I[B)Z
    .locals 10
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1230
    if-nez p2, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return v5

    .line 1233
    :cond_1
    array-length v7, p2

    sget-object v8, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v8, v8

    if-lt v7, v8, :cond_0

    .line 1237
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v7, v8

    .line 1239
    const-string v7, "CoverManager.NfcLedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected response data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-virtual {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v4, 0x0

    .line 1242
    .local v4, "patternCount":I
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 1244
    .local v1, "b":B
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v7, v7, v4

    if-eq v1, v7, :cond_2

    if-ne v4, v6, :cond_3

    .line 1245
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1246
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v7, v7

    if-ne v4, v7, :cond_4

    move v5, v6

    .line 1247
    goto :goto_0

    .line 1249
    :cond_3
    if-nez v4, :cond_0

    .line 1242
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private notifyLedOffListeners(I)V
    .locals 7
    .param p1, "turnedOffCommand"    # I

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "event":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1472
    .local v3, "systemEventData":Landroid/os/Bundle;
    const-string/jumbo v4, "led_off_command"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1474
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1475
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1476
    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 1477
    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1480
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    return-void
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 1490
    const/4 v0, 0x1

    .line 1492
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1493
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1494
    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 1495
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1498
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    return-void
.end method

.method private scheduleLedOffTimeout(I[B)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const-wide/16 v8, 0xe74

    const/16 v6, 0xf

    const/4 v5, 0x1

    .line 384
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleLedOffTimerout, command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sparse-switch p1, :sswitch_data_0

    .line 408
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_4

    if-eq p1, v6, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_0
    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    if-ne p1, v6, :cond_3

    .line 411
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 392
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 396
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Call InProgress duration time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    .line 421
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 427
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 430
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 431
    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 432
    iput v5, v1, Landroid/os/Message;->what:I

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 454
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 423
    .end local v1    # "msgLedOff":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 435
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msgLedOff":Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x11f8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 440
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 441
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 443
    :cond_7
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x13ec

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 448
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 451
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x14 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch

    .line 433
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .locals 2

    .prologue
    .line 683
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 684
    return-void
.end method

.method private setOngoingEvent(I[B)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 960
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    .line 958
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_0
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1332
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1334
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1335
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1336
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1344
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1347
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1348
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1350
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1351
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1352
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v8}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$1;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1354
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1361
    :goto_0
    return-void

    .line 1337
    :catch_0
    move-exception v7

    .line 1338
    .local v7, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1340
    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v7

    .line 1341
    .local v7, "e":Ljava/nio/BufferOverflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1355
    .end local v7    # "e":Ljava/nio/BufferOverflowException;
    :catch_2
    move-exception v7

    .line 1356
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1358
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1359
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1371
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1373
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1374
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1378
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 1379
    return-void

    .line 1376
    :cond_0
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopLedCover()V
    .locals 4

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v0

    .line 1432
    .local v0, "stopCoverResult":Z
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1436
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 1440
    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 731
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_2

    .line 736
    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v3, :cond_0

    .line 738
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 742
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 744
    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 749
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_0
    move v1, v2

    .line 758
    :goto_1
    return v1

    .line 751
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 755
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 529
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1618
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1620
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1621
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1626
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1628
    .local v1, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1634
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1633
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1635
    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 483
    :cond_0
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 490
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 491
    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit v8

    goto :goto_0

    .line 503
    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 498
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    .line 499
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 501
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 502
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 536
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 309
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v2, :cond_1

    .line 311
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataToNfcLedCover: command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const v2, 0xffff

    if-ne p1, v2, :cond_2

    .line 322
    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, v7, :cond_4

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_4

    .line 323
    const/16 p1, 0xf

    .line 331
    :cond_2
    if-ne p1, v7, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    .line 338
    :cond_3
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5

    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 339
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Ignore battery chargin, battery low already shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_4
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time tick: clock not displayed, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6

    .line 345
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 352
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 353
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    const v2, 0xfff0

    if-ne p1, v2, :cond_7

    .line 356
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 357
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 358
    aget-byte v2, p2, v5

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 359
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 347
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 362
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_7
    const/16 v2, 0x13

    if-ne p1, v2, :cond_8

    .line 363
    iput v6, v1, Landroid/os/Message;->what:I

    .line 364
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 365
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 368
    :cond_8
    iput v5, v1, Landroid/os/Message;->what:I

    .line 372
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 373
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string/jumbo v1, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 543
    const-string/jumbo v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 544
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 562
    :goto_0
    return-void

    .line 546
    :pswitch_0
    const-string/jumbo v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 547
    .local v4, "touchListenerType":I
    const-string/jumbo v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 548
    .local v3, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 549
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 551
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 553
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 554
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 557
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 558
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 508
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 513
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 514
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 515
    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 519
    const/4 v2, 0x1

    monitor-exit v3

    .line 525
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_0
    return v2

    .line 523
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v6, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    move v0, v2

    .line 252
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v4, v0, :cond_0

    .line 253
    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    .line 254
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v4, :cond_0

    .line 259
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 261
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 262
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 267
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 269
    return-void

    .end local v0    # "isCoverAttached":Z
    :cond_1
    move v0, v3

    .line 251
    goto :goto_0

    .restart local v0    # "isCoverAttached":Z
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 261
    goto :goto_1
.end method
