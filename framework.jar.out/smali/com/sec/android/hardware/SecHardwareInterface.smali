.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_DISPLAY_0:I = 0x0

.field public static final MDNIE_DISPLAY_1:I = 0x1

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_EMAIL_MODE:I = 0xa

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final READING_MODE_PATH:Ljava/lang/String; = "sys.dnle.readingmode"

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CabcDaemonConnect()V
    .locals 0

    .prologue
    return-void
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .locals 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "send_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    const/16 v4, 0x64

    new-array v2, v4, [B

    .local v2, "recv_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "len":I
    .end local v2    # "recv_buf":[B
    .end local v3    # "send_buf":[B
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sput-boolean v5, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private static IsCabcDaemonConnected()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method private static _setmDNIeUIMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static _setmDNIeUIModeSub(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const-string v0, "/sys/class/mdnie_1/mdnie_1/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .local v1, "ret":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,1"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,0"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static enableGloveMode(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .local v1, "ret":Z
    const/4 v0, 0x1

    .local v0, "con":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static enableHandgripEvent(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "handgrip_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const-string v1, "handgrip_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static enableHoverEvent(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "hover_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const-string v1, "hover_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableSamsungPay(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "spay_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const-string v1, "spay_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static enableShowBriefingInformation(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "scrub_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const-string v1, "scrub_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getEPenType()I
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, -0x1

    .local v6, "type":I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v0, 0x0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    move v7, v6

    :cond_1
    :goto_1
    return v7

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v4

    .local v4, "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .local v5, "ne":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, 0x0

    goto :goto_1

    :catch_3
    move-exception v4

    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ie":Ljava/io/IOException;
    .end local v5    # "ne":Ljava/lang/NumberFormatException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v4    # "ie":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .local v3, "ee":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v0, 0x0

    goto :goto_0

    :catch_6
    move-exception v4

    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ie":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    const/4 v0, 0x0

    :cond_2
    :goto_5
    throw v7

    :catch_7
    move-exception v4

    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "ne":Ljava/lang/NumberFormatException;
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static isReadingMode()Z
    .locals 2

    .prologue
    const-string v1, "sys.dnle.readingmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setAmoledACL(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAmoledVideoGamma(Z)Z
    .locals 1
    .param p0, "videomode"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .locals 8
    .param p0, "app"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_0
    new-array v0, v6, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "buffer":[B
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    if-eqz p1, :cond_0

    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_2
    aput-byte v7, v0, v6

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_1
    return-void

    .restart local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_5
    aput-byte v7, v0, v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static setBatteryUse(IZ)V
    .locals 2
    .param p0, "module"    # I
    .param p1, "enable"    # Z

    .prologue
    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .locals 1
    .param p0, "enable"    # I

    .prologue
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .locals 6
    .param p0, "handtype"    # I

    .prologue
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-nez p0, :cond_1

    const/16 v5, 0x30

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_1
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    const/16 v5, 0x31

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .locals 6
    .param p0, "max_freq"    # Ljava/lang/String;

    .prologue
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setPlayVideoSpeed(Z)Z
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    return-void
.end method

.method private static setReadingMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "sys.dnle.readingmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sys.dnle.readingmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTconUIMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .locals 8
    .param p0, "level"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "fw":Ljava/io/FileWriter;
    const-string v5, " "

    .local v5, "modelname":Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string v6, "/sys/class/leds/leds-sec/brightness"

    .local v6, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "fl":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v6, "/sys/class/camera/rear/rear_flash"

    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-lez p0, :cond_6

    const/16 v7, 0xf

    if-ge p0, v7, :cond_6

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "lLevel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "lLevel":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_8

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_0

    .end local v6    # "path":Ljava/lang/String;
    :cond_5
    const-string v6, "/sys/class/camera/flash/rear_flash"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_6
    :try_start_3
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fl":Ljava/io/File;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_6
    throw v7

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v1    # "fl":Ljava/io/File;
    :catch_7
    move-exception v0

    goto :goto_3

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_8
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static setTorchLight(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    if-eqz p0, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_0
.end method

.method public static setTouchJitterFilter(Z)Z
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "result"    # [I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeDualUIMode(II)Z
    .locals 1
    .param p0, "display"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeNegative(Z)Z
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeOutDoor(Z)Z
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeReadingMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    :goto_0
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    goto :goto_0
.end method

.method public static setmDNIeUIMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    invoke-static {}, Lcom/sec/android/hardware/SecHardwareInterface;->isReadingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setmDNIeUserMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .local v0, "ret":Z
    const-string v1, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v1, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
