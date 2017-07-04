.class final Lcom/android/server/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field protected static final CMD_LED_FACTORY_MODE:I = 0x70

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xb

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CoverManager.GracefulNfcLedCoverController"

.field private static TEST:I


# instance fields
.field private mCallTimerLock:Ljava/lang/Object;

.field private final mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 52
    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 82
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 83
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 95
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 105
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/GracefulNfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/GracefulNfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/GracefulNfcLedCoverController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/GracefulNfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 653
    if-nez p2, :cond_0

    .line 654
    new-array p2, v7, [B

    .end local p2    # "data":[B
    fill-array-data p2, :array_0

    .line 656
    .restart local p2    # "data":[B
    :cond_0
    array-length v6, p2

    if-ge v6, v7, :cond_1

    .line 657
    new-array v0, v7, [B

    aput-byte v8, v0, v8

    aget-byte v6, p2, v8

    aput-byte v6, v0, v9

    .end local p2    # "data":[B
    .local v0, "data":[B
    move-object p2, v0

    .line 659
    .end local v0    # "data":[B
    .restart local p2    # "data":[B
    :cond_1
    const/4 v2, 0x0

    .line 662
    .local v2, "isPayloadData":Z
    array-length v6, p2

    if-le v6, v10, :cond_2

    .line 663
    const/4 v2, 0x1

    .line 665
    :cond_2
    const/4 v4, 0x5

    .line 666
    .local v4, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    .line 667
    .local v3, "ledPacketLength":I
    if-eqz v2, :cond_3

    .line 668
    aget-byte v3, p2, v8

    .line 670
    :cond_3
    add-int v5, v4, v3

    .line 671
    .local v5, "size":I
    add-int v6, v4, v3

    new-array v1, v6, [B

    .line 674
    .local v1, "genData":[B
    aput-byte v8, v1, v8

    .line 675
    const/16 v6, -0x5e

    aput-byte v6, v1, v9

    .line 676
    aput-byte v8, v1, v7

    .line 677
    aput-byte v8, v1, v10

    .line 679
    const/4 v6, 0x4

    int-to-byte v7, v3

    aput-byte v7, v1, v6

    .line 681
    if-eqz v2, :cond_4

    .line 682
    array-length v6, p2

    invoke-static {p2, v8, v1, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 693
    :goto_0
    const-string v6, "CoverManager.GracefulNfcLedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byte data to send to cover: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v1

    .line 685
    :cond_4
    int-to-byte v6, v3

    aput-byte v6, v1, v11

    .line 686
    const/4 v6, 0x6

    int-to-byte v7, p1

    aput-byte v7, v1, v6

    .line 689
    const/4 v6, 0x7

    array-length v7, p2

    invoke-static {p2, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 690
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x2

    const/4 v8, -0x1

    aput-byte v8, v1, v7

    aput-byte v8, v1, v6

    goto :goto_0

    .line 654
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 885
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 887
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 889
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 892
    :cond_0
    return-void
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 702
    const/4 v0, 0x4

    .line 703
    .local v0, "len":I
    if-eqz p1, :cond_0

    .line 704
    array-length v1, p1

    add-int/2addr v0, v1

    .line 710
    :goto_0
    return v0

    .line 707
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 944
    sparse-switch p1, :sswitch_data_0

    .line 968
    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 948
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 949
    aget-byte v1, p2, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 957
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 958
    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 960
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 962
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 964
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch

    .line 949
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 958
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
    .line 334
    const/4 v0, 0x2

    .line 336
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 338
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 339
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 342
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 343
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 204
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 848
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

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

    .line 850
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 851
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 853
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 854
    .local v2, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    .line 855
    invoke-virtual {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_0

    .line 858
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 872
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 878
    :cond_2
    :goto_2
    return-void

    .line 859
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 860
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 862
    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 863
    .restart local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    .line 864
    invoke-virtual {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_3

    .line 867
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 869
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

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

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v6, 0x0

    .line 588
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    if-eq p1, v3, :cond_0

    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 589
    aget-byte v3, p3, v6

    sparse-switch v3, :sswitch_data_0

    .line 626
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transceive error - unknown error value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    :goto_0
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Sent done intent, fail transceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 635
    iput-boolean v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 636
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 638
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_1
    :goto_1
    return-void

    .line 600
    :sswitch_0
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v4, 0xd

    if-ge v3, v4, :cond_2

    .line 601
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-boolean v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 609
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v2

    .line 611
    .local v2, "stopCoverResult":Z
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 614
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 615
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 616
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 617
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 618
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    goto :goto_1

    .line 621
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "stopCoverResult":Z
    :cond_2
    iput v6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 622
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Could not transceive command to cover so turn off led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 589
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
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 358
    const/4 v0, 0x4

    .line 360
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 361
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 362
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 363
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 366
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 367
    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 718
    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_1

    .line 720
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 732
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_2

    .line 733
    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 737
    :cond_2
    const/16 v4, 0x11

    new-array v5, v7, [B

    fill-array-data v5, :array_0

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 738
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 740
    .local v3, "returnData":[B
    :try_start_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    .line 741
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 748
    :cond_3
    :goto_1
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    .line 749
    const/4 v4, 0x6

    new-array v3, v4, [B

    .line 750
    const/4 v4, 0x6

    aput-byte v4, v3, v10

    .line 751
    const/16 v4, 0x11

    aput-byte v4, v3, v9

    .line 752
    aput-byte v10, v3, v7

    .line 753
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v7, :cond_6

    .line 754
    aput-byte v9, v3, v8

    .line 761
    :goto_2
    const/4 v4, 0x4

    aput-byte v11, v3, v4

    .line 762
    const/4 v4, 0x5

    aput-byte v11, v3, v4

    .line 766
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 768
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x4

    aget-byte v4, v3, v4

    if-ne v4, v9, :cond_8

    const-string v4, "accept"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    .line 773
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 778
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 779
    .local v1, "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 781
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 783
    aget-byte v4, v3, v8

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 784
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    iput-boolean v10, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 787
    :try_start_3
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 790
    :catch_1
    move-exception v0

    .line 791
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 743
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_7

    .line 756
    aput-byte v7, v3, v8

    goto :goto_2

    .line 758
    :cond_7
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    aput-byte v7, v3, v8

    goto/16 :goto_2

    .line 768
    :cond_8
    const-string/jumbo v4, "reject"

    goto :goto_3

    .line 775
    :catch_3
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 795
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 797
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 798
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 799
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 737
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 346
    const/4 v0, 0x3

    .line 348
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 350
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 351
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 354
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 355
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v12, 0x2

    .line 426
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 428
    :try_start_0
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSendDataToLedCover : command : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v7, 0x12

    if-ne p1, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v7, :cond_0

    .line 432
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "NfcLedCover not started, Start wireless charger"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 435
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Led cover already off"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit v8

    .line 559
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Ensuring NFC LED Cover started"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "coverStarted":Z
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->tryStartLedCover()Z

    move-result v0

    .line 444
    if-nez v0, :cond_2

    .line 445
    iget v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v9, 0xd

    if-ge v7, v9, :cond_1

    .line 446
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 449
    .local v4, "msg":Landroid/os/Message;
    const/4 v7, 0x4

    iput v7, v4, Landroid/os/Message;->what:I

    .line 450
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 451
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    iget v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 459
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v6

    .line 461
    .local v6, "stopCoverResult":Z
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stop result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "stopCoverResult":Z
    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 558
    .end local v0    # "coverStarted":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 464
    .restart local v0    # "coverStarted":Z
    :cond_1
    :try_start_1
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Could not start NFC LED Cover"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 467
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto :goto_1

    .line 471
    :cond_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 475
    .local v2, "genData":[B
    const/4 v5, 0x0

    .line 477
    .local v5, "returnValue":[B
    :try_start_2
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v7, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v5

    .line 478
    if-eqz v5, :cond_3

    .line 479
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    :cond_3
    :goto_2
    :try_start_3
    invoke-direct {p0, v2, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidResponse([B[B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 486
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing response for command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 489
    sget v7, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v7, :cond_4

    .line 490
    monitor-exit v8

    goto/16 :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Error in trancieve command"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 492
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Sent done intent, sucess"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 501
    sparse-switch p1, :sswitch_data_0

    .line 547
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 548
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :try_start_4
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 551
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 558
    :cond_6
    :goto_4
    :try_start_5
    monitor-exit v8

    goto/16 :goto_0

    .line 506
    :sswitch_0
    sget v7, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v7, :cond_7

    .line 507
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 511
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 512
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v7, 0x2

    iput v7, v4, Landroid/os/Message;->what:I

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v3

    .line 514
    .local v3, "listenerType":I
    if-gez v3, :cond_8

    .line 515
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong listener type requested for command:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 519
    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_9

    .line 520
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 525
    :cond_9
    :goto_5
    :try_start_7
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 528
    iget-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v7, :cond_a

    .line 529
    const-string v7, "CoverManager.GracefulNfcLedCoverController"

    const-string v9, "Already polling for touch events"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 534
    :goto_6
    iget-object v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    if-eqz p2, :cond_6

    array-length v7, p2

    if-lez v7, :cond_6

    const/4 v7, 0x0

    aget-byte v7, p2, v7

    if-ne v7, v12, :cond_6

    .line 543
    .end local v3    # "listenerType":I
    .end local v4    # "msg":Landroid/os/Message;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto/16 :goto_3

    .line 522
    .restart local v3    # "listenerType":I
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5

    .line 532
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_6

    .line 553
    .end local v3    # "listenerType":I
    .end local v4    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v1

    .line 554
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 382
    return-void
.end method

.method private isFinishedTouchReply([B)Z
    .locals 4
    .param p1, "returnData"    # [B

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 842
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    if-eq v1, v0, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 571
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResponse([B[B)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 813
    if-nez p2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v1

    .line 817
    :cond_1
    array-length v2, p2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x5

    if-lt v2, v3, :cond_0

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    if-ge v0, v2, :cond_2

    .line 826
    aget-byte v2, p2, v0

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_0

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 918
    const/4 v0, 0x1

    .line 920
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 921
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 922
    .local v2, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 923
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 926
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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

    .line 927
    return-void
.end method

.method private stopLedCover()V
    .locals 4

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v0

    .line 901
    .local v0, "stopCoverResult":Z
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 903
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 905
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 909
    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-boolean v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_2

    .line 396
    iget v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v3, :cond_0

    .line 398
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 404
    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 409
    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_0
    move v1, v2

    .line 418
    :goto_1
    return v1

    .line 411
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 298
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1046
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1049
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1054
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    .line 1055
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1056
    .local v1, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1061
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
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
    .line 245
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 251
    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 252
    :cond_0
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 273
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 259
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 260
    iget-object v1, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v8

    goto :goto_0

    .line 272
    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 267
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    .line 268
    .restart local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 270
    .restart local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 305
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 211
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

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

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 231
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 232
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 238
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 239
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 226
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 374
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 312
    const-string/jumbo v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 315
    :pswitch_0
    const-string/jumbo v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 316
    .local v4, "touchListenerType":I
    const-string/jumbo v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 320
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 322
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 323
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 326
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 327
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 313
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

    .line 277
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

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

    .line 281
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 283
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 284
    iget-object v4, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 288
    const/4 v2, 0x1

    monitor-exit v3

    .line 294
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_0
    return v2

    .line 292
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const-string v3, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
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

    .line 162
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    move v0, v2

    .line 163
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v4, v0, :cond_0

    .line 164
    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 165
    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v4, :cond_0

    .line 170
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 172
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 173
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 178
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 180
    return-void

    .end local v0    # "isCoverAttached":Z
    :cond_1
    move v0, v3

    .line 162
    goto :goto_0

    .restart local v0    # "isCoverAttached":Z
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 172
    goto :goto_1
.end method
