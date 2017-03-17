.class public Lcom/sec/epdg/EpdgSettingsWriter;
.super Ljava/lang/Object;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;,
        Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    }
.end annotation


# static fields
.field private static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field public static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field public static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field public static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field public static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field public static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field public static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field private static final EVENT_WRITE_SETTING_DATA:I = 0x1

.field private static final SETTING_WRITE_MAX_RETRY:I = 0x3

.field private static final SETTING_WRITE_RETRY_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

.field private static final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/EpdgSettingsWriter$SettingData;",
            ">;"
        }
    .end annotation
.end field

.field private static mWriteHandler:Landroid/os/Handler;


# instance fields
.field colName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/sec/epdg/EpdgSettingsWriter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    if-nez v1, :cond_0

    sput-object p0, Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-direct {v1}, Lcom/sec/epdg/EpdgSettingsWriter;-><init>()V

    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgSettingsWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    invoke-direct {v3, p1, p2}, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
