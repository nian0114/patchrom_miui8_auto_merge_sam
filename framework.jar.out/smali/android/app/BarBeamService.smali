.class public Landroid/app/BarBeamService;
.super Landroid/app/IBarBeamService$Stub;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamService$Listener;,
        Landroid/app/BarBeamService$CheckStatusThread;
    }
.end annotation


# static fields
.field static FAIL:Z = false

.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final PERMISSION_BARCODE_READ:Ljava/lang/String; = "com.samsung.permission.BARCODE_READ"

.field static SUCCESS:Z = false

.field private static final TAG:Ljava/lang/String; = "BarBeamService"

.field private static bEnabled:Z

.field static result:Z


# instance fields
.field private final DATA_COMMAND:B

.field private final LED_NOTIF_ID:I

.field private final MAX_SEQUENCE_REGISTER:I

.field private final MSG_START_LED_NOTIFY:I

.field private final MSG_STOP_BEAMING:I

.field private final MSG_STOP_LED_NOTIFY:I

.field private final NUM_HOPS_VERSION_COMMAND:B

.field private final SEQUENCE_REGISTER_LENGTH:B

.field private final SEQUENCE_REGISTER_START:B

.field private final START_STOP_COMMAND:B

.field private final SYSFS_BARCODE_CONTROL:Ljava/lang/String;

.field private final SYSFS_BARCODE_ENABLE:Ljava/lang/String;

.field private final SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

.field private callbacks:Landroid/app/IBarBeamListener;

.field private isRunning:Z

.field private mBeamLength:B

.field private final mContext:Landroid/content/Context;

.field private mLEDTimer:Ljava/util/Timer;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mMsgHandler:Landroid/os/Handler;

.field mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/BarBeamService;->FAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/IBarBeamService$Stub;-><init>()V

    iput-object v1, p0, Landroid/app/BarBeamService;->callbacks:Landroid/app/IBarBeamListener;

    iput-byte v2, p0, Landroid/app/BarBeamService;->mBeamLength:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    iput-byte v2, p0, Landroid/app/BarBeamService;->DATA_COMMAND:B

    const/16 v0, -0x7f

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_START:B

    const/4 v0, 0x7

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_LENGTH:B

    const/16 v0, 0x12

    iput v0, p0, Landroid/app/BarBeamService;->MAX_SEQUENCE_REGISTER:I

    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/app/BarBeamService;->START_STOP_COMMAND:B

    const/16 v0, -0x80

    iput-byte v0, p0, Landroid/app/BarBeamService;->NUM_HOPS_VERSION_COMMAND:B

    iput-object v1, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    const/16 v0, 0x1428

    iput v0, p0, Landroid/app/BarBeamService;->LED_NOTIF_ID:I

    const-string v0, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_ENABLE:Ljava/lang/String;

    const-string v0, "/sys/class/sec/sec_barcode_emul/barcode_send"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_CONTROL:Ljava/lang/String;

    const-string v0, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Landroid/app/BarBeamService;->MSG_START_LED_NOTIFY:I

    const/16 v0, 0x28

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_LED_NOTIFY:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_BEAMING:I

    iput-object v1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    new-instance v0, Landroid/app/BarBeamService$2;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$2;-><init>(Landroid/app/BarBeamService;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    const-string v0, "BarBeamService"

    const-string v1, "BarBeamService : Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/app/BarBeamService;->isRunning:Z

    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/BarBeamService$CheckStatusThread;-><init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-virtual {v0}, Landroid/app/BarBeamService$CheckStatusThread;->start()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/BarBeamService;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/BarBeamService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Landroid/app/BarBeamService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/BarBeamService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/app/BarBeamService;->isRunning:Z

    return p1
.end method

.method static synthetic access$200(Landroid/app/BarBeamService;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BarBeamService;

    .prologue
    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/BarBeamService;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BarBeamService;

    .prologue
    invoke-direct {p0}, Landroid/app/BarBeamService;->blinkLED()V

    return-void
.end method

.method private blinkLED()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    const-string v0, "BarBeamService"

    const-string v1, "blinkLED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Landroid/app/BarBeamService$1;

    invoke-direct {v1, p0}, Landroid/app/BarBeamService$1;-><init>(Landroid/app/BarBeamService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private stopBlinkLED()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    return-void
.end method

.method private declared-synchronized swtichLED(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v1, 0x0

    .local v1, "fwLED":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .local v2, "fwLED":Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    :try_start_1
    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :cond_0
    :goto_1
    monitor-exit p0

    return v3

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_6
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit p0

    throw v4

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_7
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_a
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_2
    :goto_6
    :try_start_c
    throw v4

    :catch_5
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v5, "BarBeamService"

    const-string v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_5

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_2

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_3

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "callback":Landroid/app/IBarBeamListener;
    const/4 v4, 0x0

    .local v4, "l":Landroid/app/BarBeamService$Listener;
    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BarBeamService$Listener;

    .local v6, "listener":Landroid/app/BarBeamService$Listener;
    iget-object v7, v6, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v7, :cond_0

    monitor-exit v8

    .end local v6    # "listener":Landroid/app/BarBeamService$Listener;
    :goto_0
    return-void

    :cond_1
    if-nez v4, :cond_2

    new-instance v5, Landroid/app/BarBeamService$Listener;

    invoke-direct {v5, p0, p1}, Landroid/app/BarBeamService$Listener;-><init>(Landroid/app/BarBeamService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .local v5, "l":Landroid/app/BarBeamService$Listener;
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {p1, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v2, "client":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v1

    .local v1, "cb":Landroid/app/IBarBeamListener;
    invoke-interface {v1}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .end local v1    # "cb":Landroid/app/IBarBeamListener;
    :goto_1
    :try_start_3
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .end local v2    # "client":Ljava/lang/String;
    .end local v5    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    :cond_2
    :try_start_4
    monitor-exit v8

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    goto :goto_2

    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v2    # "client":Ljava/lang/String;
    .restart local v5    # "l":Landroid/app/BarBeamService$Listener;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public getCurrentStatus()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, "strstatus":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v6, ""

    .local v6, "ver":Ljava/lang/String;
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    .local v3, "result":Z
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, "temp":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "temp":Ljava/lang/String;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_3

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_2

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    :goto_3
    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5    # "temp":Ljava/lang/String;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :cond_3
    :try_start_7
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_4

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_2

    :cond_4
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_0

    :try_start_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_5

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_2

    :cond_5
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    :catch_6
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_7
    if-eqz v1, :cond_6

    :try_start_f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v9, :cond_7

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_6
    :goto_8
    :try_start_10
    throw v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_7
    :try_start_11
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    :catch_7
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_8

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v7

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v5    # "temp":Ljava/lang/String;
    :catch_a
    move-exception v0

    goto/16 :goto_1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_8
    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public isImplementationCompatible()Z
    .locals 7

    .prologue
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "out_en":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .local v1, "out":Ljava/io/FileOutputStream;
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .local v4, "out_en":Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_emul_en"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_4
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_send"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-boolean v5, Landroid/app/BarBeamService;->result:Z

    return v5

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_0

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v5

    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_0

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v3, :cond_0

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    :catch_6
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_6
    if-eqz v3, :cond_2

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_2
    :goto_7
    :try_start_12
    throw v5

    :catch_7
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v1, :cond_1

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_1

    :catch_a
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_9
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v1, :cond_1

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_1

    :catch_c
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :goto_a
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v1, :cond_1

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    :goto_b
    if-eqz v1, :cond_3

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :cond_3
    :goto_c
    :try_start_1e
    throw v5

    :catch_f
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_c

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catchall_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto :goto_6

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_14
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_4

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_15
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :cond_5
    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_0
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "l":Landroid/app/BarBeamService$Listener;
    const-string v1, ""

    .local v1, "client":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, "listener":Landroid/app/BarBeamService$Listener;
    iget-object v5, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    move-object v3, v4

    .end local v4    # "listener":Landroid/app/BarBeamService$Listener;
    :cond_1
    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v0

    .local v0, "cb":Landroid/app/IBarBeamListener;
    invoke-interface {v0}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .end local v0    # "cb":Landroid/app/IBarBeamListener;
    :goto_0
    :try_start_2
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v6

    return-void

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setBarcode([B)V
    .locals 10
    .param p1, "buffer"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v5, "BarBeamService"

    const-string v6, "setBarcode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.permission.BARCODE_READ"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    array-length v5, p1

    add-int/lit8 v5, v5, 0x3

    new-array v0, v5, [B

    .local v0, "data":[B
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/app/BarBeamService;->mBeamLength:B

    const-string v5, "BarBeamService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendDataTable length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v0, v9

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v5, "BarBeamService"

    const-string v6, "setBarcode is Done!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_1

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    :catch_6
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_6
    if-eqz v3, :cond_2

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_2
    :goto_7
    :try_start_f
    throw v5

    :catch_7
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setHopSequence([BII)V
    .locals 14
    .param p1, "buffer"    # [B
    .param p2, "col_size"    # I
    .param p3, "row_size"    # I

    .prologue
    const-string v11, "BarBeamService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendHopSequenceTable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.permission.BARCODE_READ"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "out":Ljava/io/FileOutputStream;
    const/16 v11, 0x8

    new-array v3, v11, [B

    .local v3, "data":[B
    const/4 v11, 0x2

    new-array v8, v11, [B

    .local v8, "numPacket":[B
    move/from16 v2, p2

    .local v2, "NP":I
    const/4 v6, 0x0

    .local v6, "j":I
    const/16 v1, -0x7f

    .local v1, "BSR":B
    sget-boolean v11, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z

    const/4 v11, 0x0

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    const/4 v11, 0x1

    and-int/lit8 v12, v2, 0x1f

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    .local v5, "i":I
    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    const/4 v6, 0x0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aput-byte v1, v3, v6

    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    const/16 v12, 0x15

    if-le v11, v12, :cond_3

    const-string v11, "BarBeamService"

    const-string v12, "not supported bw "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    const/16 v11, 0x15

    aput-byte v11, v3, v7

    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x5

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x6

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v11, v1, 0x7

    int-to-byte v1, v11

    monitor-enter p0

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v9, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v9, :cond_0

    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v11

    :catch_3
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    :goto_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v9, :cond_0

    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .restart local v4    # "ex":Ljava/lang/Exception;
    :goto_7
    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v9, :cond_0

    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :catch_6
    move-exception v4

    :try_start_11
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_8
    if-eqz v9, :cond_2

    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_2
    :goto_9
    :try_start_13
    throw v11

    :catch_7
    move-exception v4

    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_9

    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "j":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v7    # "j":I
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    goto/16 :goto_2

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v11

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    throw v11

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/FileNotFoundException;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_a
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v9, :cond_1

    :try_start_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_3

    :catch_a
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_3

    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_b
    :try_start_18
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v9, :cond_1

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_3

    :catch_c
    move-exception v4

    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto/16 :goto_3

    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_c
    :try_start_1b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v9, :cond_1

    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_3

    :catch_e
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto/16 :goto_3

    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_d
    if-eqz v9, :cond_4

    :try_start_1e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :cond_4
    :goto_e
    :try_start_1f
    throw v11

    :catch_f
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto :goto_e

    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_5
    return-void

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v11

    goto :goto_d

    :catch_10
    move-exception v4

    goto :goto_c

    :catch_11
    move-exception v4

    goto :goto_b

    :catch_12
    move-exception v4

    goto :goto_a

    .end local v5    # "i":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_6
    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public startBeaming()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const-string v9, "BarBeamService"

    const-string v10, "startBeaming"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.permission.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x0

    .local v7, "out_en":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .local v0, "data":[B
    new-array v2, v12, [C

    .local v2, "flag":[C
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .local v8, "out_en":Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_1
    aput-char v10, v2, v9

    invoke-virtual {v8, v2}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v8, :cond_f

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_3
    aput-byte v10, v0, v9

    const/4 v9, 0x1

    iget-byte v10, p0, Landroid/app/BarBeamService;->mBeamLength:B

    aput-byte v10, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v6, :cond_e

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_4

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v5, v6

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v7, :cond_0

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :catch_3
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_4
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v9

    :catch_4
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v7, :cond_0

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_6
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v7, :cond_0

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_0

    :catch_7
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    :goto_7
    if-eqz v7, :cond_2

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_2
    :goto_8
    :try_start_16
    throw v9

    :catch_8
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_8

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_17
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    :catch_9
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v5, :cond_1

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_6

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_a

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v9
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :catch_a
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_2

    .local v1, "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_b
    :try_start_20
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-eqz v5, :cond_1

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_8

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :try_start_22
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_c

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :try_start_23
    throw v9
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :catch_c
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_2

    .local v1, "ex":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_25
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :try_start_26
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :goto_d
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    if-eqz v5, :cond_1

    :try_start_28
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_a

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :try_start_29
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_e

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :try_start_2a
    throw v9
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    :catch_e
    move-exception v1

    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    goto/16 :goto_2

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_2c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    :try_start_2d
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_e
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_6
    move-exception v9

    :goto_f
    if-eqz v5, :cond_b

    :try_start_2e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_d

    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_f
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    :try_start_2f
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_10

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_7
    move-exception v10

    monitor-exit v11
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    :try_start_30
    throw v10
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    :catch_f
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_b
    :goto_11
    throw v9
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_32
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    :try_start_33
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_f
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    goto :goto_11

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_8
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_4

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_a
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_f

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_b
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_e
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :cond_f
    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_0
.end method

.method public startBeaming_repeat(I)V
    .locals 14
    .param p1, "repeatCount"    # I

    .prologue
    const/4 v12, 0x1

    const-string v9, "BarBeamService"

    const-string v10, "startBeaming_repeat"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p1, v12, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v9, 0xff

    if-le p1, v9, :cond_1

    const/16 p1, 0xff

    :cond_1
    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.permission.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x0

    .local v7, "out_en":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .local v0, "data":[B
    new-array v2, v12, [C

    .local v2, "flag":[C
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .local v8, "out_en":Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_1
    aput-char v10, v2, v9

    invoke-virtual {v8, v2}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v8, :cond_11

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    :cond_2
    :goto_0
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_3
    aput-byte v10, v0, v9

    const/4 v9, 0x1

    int-to-byte v10, p1

    aput-byte v10, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v6, :cond_10

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_6

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v5, v6

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto :goto_0

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v7, :cond_2

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :catch_3
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_4
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v9

    :catch_4
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v7, :cond_2

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :goto_6
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v7, :cond_2

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_0

    :catch_7
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    :goto_7
    if-eqz v7, :cond_4

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_4
    :goto_8
    :try_start_16
    throw v9

    :catch_8
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_8

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_17
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    :catch_9
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v5, :cond_3

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_8

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_a

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v9
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :catch_a
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_2

    .local v1, "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_1e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_b
    :try_start_20
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-eqz v5, :cond_3

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_a

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :try_start_22
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_c

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :try_start_23
    throw v9
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :catch_c
    move-exception v1

    :try_start_24
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_2

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_25
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :try_start_26
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :goto_d
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    if-eqz v5, :cond_3

    :try_start_28
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_c

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :try_start_29
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_e

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :try_start_2a
    throw v9
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_e
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    :catch_e
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    goto/16 :goto_2

    .local v1, "ex":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_2c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    :try_start_2d
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_e
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    goto/16 :goto_2

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_6
    move-exception v9

    :goto_f
    if-eqz v5, :cond_d

    :try_start_2e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_f

    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_f
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    :try_start_2f
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_10

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_7
    move-exception v10

    monitor-exit v11
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    :try_start_30
    throw v10
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    :catch_f
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "ex":Ljava/io/IOException;
    :cond_d
    :goto_11
    throw v9
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_e
    :try_start_32
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    :try_start_33
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_f
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    goto :goto_11

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_8
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_4

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_a
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_f

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_b
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_10
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :cond_11
    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_0
.end method

.method public stopBeaming()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-string v7, "BarBeamService"

    const-string v8, "stopBarBeam"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.permission.BARCODE_READ"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "out_en":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x2

    new-array v0, v7, [B

    .local v0, "data":[B
    new-array v2, v10, [C

    .local v2, "flag":[C
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .local v6, "out_en":Ljava/io/FileWriter;
    const/4 v7, 0x0

    const/16 v8, 0x30

    :try_start_1
    aput-char v8, v2, v7

    invoke-virtual {v6, v2}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_3
    aput-byte v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v0, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_0

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v7

    :catch_3
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v5, :cond_0

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catch_4
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v5, :cond_0

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_0

    :catch_6
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v5, :cond_2

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_2
    :goto_7
    :try_start_13
    throw v7

    :catch_7
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v3, :cond_1

    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1

    :catch_a
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_9
    :try_start_18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v3, :cond_1

    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_1

    :catch_c
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_d
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_a
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-eqz v3, :cond_1

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_1

    :catch_e
    move-exception v1

    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    :goto_b
    if-eqz v3, :cond_3

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :cond_3
    :goto_c
    :try_start_1f
    throw v7

    :catch_f
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_c

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catchall_6
    move-exception v7

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto :goto_6

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_4

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :cond_5
    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_0
.end method
