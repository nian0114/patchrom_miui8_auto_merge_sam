.class public Landroid/net/wifi/WifiApWhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApWhiteList$WhiteList;
    }
.end annotation


# static fields
.field public static final WL_ALREADY_IN_TABLE:I = 0x4

.field public static final WL_FAIL:I = 0x2

.field public static final WL_NOT_IN_TABLE:I = 0x5

.field public static final WL_NOT_MAC:I = 0x3

.field public static final WL_SUCCESS:I = 0x1

.field private static volatile uniqueInstance:Landroid/net/wifi/WifiApWhiteList;


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private final HOSTAPD_ACCEPT_OLD:Ljava/lang/String;

.field private mWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/misc/wifi_hostapd/hostapd.accept"

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->HOSTAPD_ACCEPT:Ljava/lang/String;

    const-string v0, "/data/misc/wifi/hostapd.accept"

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->HOSTAPD_ACCEPT_OLD:Ljava/lang/String;

    const/16 v0, 0x40

    iput v0, p0, Landroid/net/wifi/WifiApWhiteList;->BUFFER_SIZE:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->createOrChangePermission()V

    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->readWhiteListFile()V

    return-void
.end method

.method private createOrChangePermission()V
    .locals 13

    .prologue
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v11, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "fileold":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v11, 0x3

    :try_start_1
    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "/system/bin/chmod 665 /data/misc/wifi_hostapd/hostapd.accept"

    aput-object v12, v1, v11

    .local v1, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v10

    .local v10, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v10    # "p":Ljava/lang/Process;
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v5, 0x0

    .local v5, "in":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .local v8, "out":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_3
    new-array v0, v11, [B

    .local v0, "buffer":[B
    new-instance v6, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    const/4 v7, -0x1

    .local v7, "n":I
    :goto_2
    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v0    # "buffer":[B
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "n":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v8, :cond_0

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "n":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_5

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_5
    if-eqz v9, :cond_0

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "n":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_7
    :goto_8
    throw v11

    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "cmd":[Ljava/lang/String;
    .restart local v10    # "p":Ljava/lang/Process;
    :catch_8
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_1

    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "p":Ljava/lang/Process;
    :catch_9
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "n":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v7    # "n":I
    :catch_a
    move-exception v2

    goto :goto_3

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getInstance()Landroid/net/wifi/WifiApWhiteList;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiApWhiteList;

    invoke-direct {v0}, Landroid/net/wifi/WifiApWhiteList;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    :cond_0
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    return-object v0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .prologue
    const-string v2, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private readWhiteListFile()V
    .locals 8

    .prologue
    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "bufReadLine":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v4, 0x0

    .local v4, "mac":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "name":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v7, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v7, v4, v5}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v2    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "bufReadLine":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "bufReadLine":Ljava/lang/String;
    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v6

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_1

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "bufReadLine":Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private writeWhiteListFile()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v5, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_2
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_4
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v2, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    const/4 v2, 0x1

    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public removeWhiteList(Ljava/lang/String;)I
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    const/4 v2, 0x1

    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method
