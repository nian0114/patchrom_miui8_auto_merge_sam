.class public Lcom/android/server/usb/UsbMirrorLinkManager;
.super Ljava/lang/Object;
.source "UsbMirrorLinkManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_START_ACTION:Ljava/lang/String; = "com.samsung.android.mirrorlink.action.ML_UEVENT"

.field private static final NCM_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_ncm"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x5dc


# instance fields
.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private final mContext:Landroid/content/Context;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMirrorLinkManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMirrorLinkManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbMirrorLinkManager;
    .param p1, "x1"    # Landroid/os/DVFSHelper;

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    return-object p1
.end method


# virtual methods
.method public systemReady()V
    .locals 13

    .prologue
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v8, "strContent":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/File;

    const-string v11, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "mUsbfile":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_2

    int-to-char v11, v0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .end local v0    # "ch":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "FileNotFoundException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-direct {v9, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v8, 0x0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .local v10, "val":Ljava/lang/String;
    const-string v11, "major"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .local v5, "majorVal":Ljava/lang/String;
    const-string v11, "0"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .local v6, "minorVal":Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "systemReady terminal_version : major 0 minor 1"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "mlCommand":Landroid/content/Intent;
    const-string v11, "mirrorlink"

    const-string v12, "START"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v5    # "majorVal":Ljava/lang/String;
    .end local v6    # "minorVal":Ljava/lang/String;
    .end local v7    # "mlCommand":Landroid/content/Intent;
    .end local v10    # "val":Ljava/lang/String;
    :cond_0
    :goto_3
    const/4 v9, 0x0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    :cond_1
    :goto_4
    return-void

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v0    # "ch":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "ch":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_5
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "IOException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "majorVal":Ljava/lang/String;
    .restart local v9    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v10    # "val":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "systemReady terminal_version : major 1 minor"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7    # "mlCommand":Landroid/content/Intent;
    const-string v11, "mirrorlink"

    const-string v12, "START"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .end local v5    # "majorVal":Ljava/lang/String;
    .end local v7    # "mlCommand":Landroid/content/Intent;
    :cond_4
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "systemReady major version is not present"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v10    # "val":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_1
.end method
