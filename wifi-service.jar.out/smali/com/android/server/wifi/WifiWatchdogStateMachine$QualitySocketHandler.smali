.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualitySocketHandler"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mQCStartTime:J

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    .line 2371
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 2372
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2365
    const-string v0, "WifiWatchdogStateMachine.QualitySocketHandler"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    .line 2367
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2368
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2369
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    .line 2373
    return-void
.end method

.method private sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    .locals 19
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "resolvedIp"    # I
    .param p3, "srcUrl"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "isSSLSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 2647
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[URL] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_0
    const/4 v2, 0x0

    .line 2650
    .local v2, "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 2655
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addr : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, " (Proxy)"

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_1
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v13, "url":Ljava/net/URL;
    const/16 v10, 0x50

    .line 2659
    .local v10, "port":I
    if-eqz p5, :cond_2

    .line 2660
    const/16 v10, 0x1bb

    .line 2662
    :cond_2
    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v10

    .line 2663
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    .line 2664
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getProtocol: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_5
    const-string v14, "http"

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "https"

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 2666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v15, "No http(s) request!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    new-instance v14, Ljava/net/SocketException;

    invoke-direct {v14}, Ljava/net/SocketException;-><init>()V

    throw v14

    .line 2653
    .end local v10    # "port":I
    .end local v13    # "url":Ljava/net/URL;
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    goto/16 :goto_0

    .line 2655
    :cond_7
    const-string v14, " "

    goto/16 :goto_1

    .line 2670
    .restart local v10    # "port":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_8
    const-string v4, "/"

    .line 2671
    .local v4, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2672
    const-string v14, ""

    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 2673
    const-string v14, "http://%s%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2681
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    .line 2683
    .local v5, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_d

    .line 2684
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v15, "socket closed before connect"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_a
    new-instance v14, Ljava/net/SocketException;

    invoke-direct {v14}, Ljava/net/SocketException;-><init>()V

    throw v14

    .line 2675
    .end local v5    # "ipaddr":Ljava/net/InetAddress;
    :cond_b
    const-string v14, "http://%s/"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2677
    :cond_c
    const-string v14, ""

    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 2678
    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2689
    .restart local v5    # "ipaddr":Ljava/net/InetAddress;
    :cond_d
    const-string v14, "wlan0"

    invoke-static {v14}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2690
    const-string v14, "wlan0"

    invoke-static {v14}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2693
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 2694
    .local v6, "message1":Landroid/os/Message;
    move/from16 v0, p4

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 2695
    const v14, 0x2105d

    iput v14, v6, Landroid/os/Message;->what:I

    .line 2696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v14

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v14, v6, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2698
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 2699
    .local v7, "message2":Landroid/os/Message;
    move/from16 v0, p4

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 2701
    if-nez p4, :cond_e

    .line 2702
    const v14, 0x2102d

    iput v14, v7, Landroid/os/Message;->what:I

    .line 2703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v14

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v7, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2706
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMptcpEnabled:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 2707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v15, "MPTCP is enabled."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 2709
    new-instance v14, Ljava/net/InetSocketAddress;

    const/16 v15, 0x5603

    invoke-direct {v14, v5, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 2715
    :goto_3
    :try_start_0
    sget-object v14, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v15

    sget v16, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v17, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    const-string v18, "wlan0"

    invoke-interface/range {v14 .. v18}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/16 v12, 0x1388

    .line 2722
    .local v12, "timeout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2723
    if-nez p4, :cond_18

    .line 2724
    new-instance v14, Ljava/net/InetSocketAddress;

    invoke-direct {v14, v2, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v15, 0xbb8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2729
    :goto_5
    if-eqz p5, :cond_f

    move-object/from16 v14, p1

    .line 2730
    check-cast v14, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v14}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 2732
    :cond_f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v15, "socket Connected!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v14

    const v15, 0x2105d

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2736
    if-eqz p4, :cond_11

    .line 2737
    const v14, 0x2105e

    iput v14, v7, Landroid/os/Message;->what:I

    .line 2738
    move/from16 v0, p4

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 2739
    if-eqz p5, :cond_19

    .line 2740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0x1388

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v7, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2748
    :cond_11
    :goto_6
    const-string v14, "wlan0"

    invoke-static {v14}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2749
    const-string v14, "wlan0"

    invoke-static {v14}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2751
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 2752
    .local v11, "theOutput":Ljava/io/OutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2753
    .local v9, "out":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    if-nez v14, :cond_12

    .line 2754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    const-string v15, "ro.product.model"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    .line 2756
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    if-nez v14, :cond_13

    .line 2757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    const-string v15, "ro.build.version.release"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    .line 2759
    :cond_13
    const/4 v8, 0x0

    .line 2760
    .local v8, "modelName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 2761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    if-eqz v14, :cond_1a

    .line 2762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v8, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    .line 2771
    :goto_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GET "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " HTTP/1.1\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2772
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Host: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2773
    const-string v14, "Connection: close\r\n"

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2774
    const-string v14, "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\r\n"

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2775
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "User-Agent: Mozilla/5.0 (Linux; Android "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.0 Chrome/38.0.2125.102 Mobile Safari/537.36\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2777
    const-string v14, "Accept-Encoding: gzip,deflate,sdch\r\n"

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2778
    const-string v14, "Accept-Language: en-GB,en;q=0.8,en-US;q=0.6,en;q=0.4\r\n"

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2779
    const-string v14, "\r\n"

    invoke-virtual {v9, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2781
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 2783
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v15, "socket.sendGetMethod!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_14
    return-void

    .line 2711
    .end local v8    # "modelName":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/OutputStreamWriter;
    .end local v11    # "theOutput":Ljava/io/OutputStream;
    .end local v12    # "timeout":I
    :cond_15
    new-instance v14, Ljava/net/InetSocketAddress;

    const/4 v15, 0x0

    invoke-direct {v14, v5, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto/16 :goto_3

    .line 2716
    :catch_0
    move-exception v3

    .line 2717
    .local v3, "errnoException":Landroid/system/ErrnoException;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v3}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 2718
    :cond_16
    new-instance v14, Ljava/net/SocketException;

    invoke-direct {v14}, Ljava/net/SocketException;-><init>()V

    throw v14

    .line 2721
    .end local v3    # "errnoException":Landroid/system/ErrnoException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0xbb8

    goto/16 :goto_4

    .line 2726
    .restart local v12    # "timeout":I
    :cond_18
    new-instance v14, Ljava/net/InetSocketAddress;

    invoke-direct {v14, v2, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto/16 :goto_5

    .line 2743
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0xbb8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v7, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 2764
    .restart local v8    # "modelName":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/OutputStreamWriter;
    .restart local v11    # "theOutput":Ljava/io/OutputStream;
    :cond_1a
    const-string v8, "GT-I9500"

    goto/16 :goto_7

    .line 2766
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    if-eqz v14, :cond_1c

    .line 2767
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v14

    iget-object v8, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    goto/16 :goto_7

    .line 2769
    :cond_1c
    const-string v8, "GT-I9500"

    goto/16 :goto_7
.end method

.method private sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 22
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "srcUrl"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 2789
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[URL] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_0
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2791
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 2794
    .local v13, "message":Landroid/os/Message;
    const v19, 0x2105c

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    .line 2795
    move/from16 v0, p3

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0xbb8

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2798
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2799
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    .line 2800
    .local v5, "addrList":[Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    const v20, 0x2105c

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2802
    const/4 v11, 0x0

    .line 2803
    .local v11, "ipv4Count":I
    move-object v6, v5

    .local v6, "arr$":[Ljava/net/InetAddress;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_2

    aget-object v9, v6, v8

    .line 2804
    .local v9, "inet":Ljava/net/InetAddress;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "inet : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_1
    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 2803
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2808
    .end local v9    # "inet":Ljava/net/InetAddress;
    :cond_2
    if-nez v11, :cond_3

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "There is no an IPv4 address in the array of IP addresses"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    new-instance v19, Ljava/net/UnknownHostException;

    invoke-direct/range {v19 .. v19}, Ljava/net/UnknownHostException;-><init>()V

    throw v19

    .line 2814
    :cond_3
    new-instance v16, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 2815
    .local v16, "rand":Ljava/util/Random;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    aget-object v4, v5, v19

    .line 2816
    .local v4, "addr":Ljava/net/InetAddress;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addr : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_4
    const/16 v15, 0x50

    .line 2819
    .local v15, "port":I
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getPort()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getPort()I

    move-result v15

    .line 2820
    :cond_5
    const-string v19, "http"

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "No http request!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    new-instance v19, Ljava/net/SocketException;

    invoke-direct/range {v19 .. v19}, Ljava/net/SocketException;-><init>()V

    throw v19

    .line 2824
    :cond_6
    const-string v7, "/"

    .line 2825
    .local v7, "file":Ljava/lang/String;
    const-string v19, ""

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 2827
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v10

    .line 2829
    .local v10, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_9

    .line 2830
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket closed before connect"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_8
    new-instance v19, Ljava/net/SocketException;

    invoke-direct/range {v19 .. v19}, Ljava/net/SocketException;-><init>()V

    throw v19

    .line 2834
    :cond_9
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2835
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2837
    new-instance v19, Ljava/net/InetSocketAddress;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 2838
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0xbb8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2839
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket Connected!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 2842
    const v19, 0x2105b

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    .line 2843
    move/from16 v0, p3

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2845
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2846
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    .line 2849
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 2850
    .local v17, "theOutput":Ljava/io/OutputStream;
    new-instance v14, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2851
    .local v14, "out":Ljava/io/OutputStreamWriter;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GET "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " HTTP/1.1\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2852
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HOST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2853
    const-string v19, "Connection: close\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2856
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2858
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 2860
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket.sendGetMethod!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_b
    return-void
.end method


# virtual methods
.method getRxBytesDuringQC()I
    .locals 6

    .prologue
    .line 2382
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 2383
    .local v0, "bytes":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxBytesDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_0
    return v0
.end method

.method getRxPacketsDuringQC()I
    .locals 6

    .prologue
    .line 2376
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 2377
    .local v0, "packets":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxPacketsDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2389
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2642
    :cond_0
    :goto_0
    return-void

    .line 2391
    :sswitch_0
    const/16 v32, 0x0

    .line 2392
    .local v32, "needSkip":Z
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2393
    .local v8, "id":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 2394
    .local v6, "ip":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 2395
    .local v7, "qcUrl":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2398
    :cond_2
    const/16 v37, 0x0

    .line 2399
    .local v37, "rtt":I
    const/16 v36, 0x0

    .line 2401
    .local v36, "resultBytes":I
    const/16 v43, 0x0

    .line 2402
    .local v43, "urlCheck":Ljava/net/URL;
    const/16 v28, 0x0

    .line 2404
    .local v28, "isSSLSocket":Z
    :try_start_0
    new-instance v44, Ljava/net/URL;

    move-object/from16 v0, v44

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    .end local v43    # "urlCheck":Ljava/net/URL;
    .local v44, "urlCheck":Ljava/net/URL;
    :try_start_1
    const-string v4, "https"

    invoke-virtual/range {v44 .. v44}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12

    move-result v28

    move-object/from16 v43, v44

    .line 2410
    .end local v44    # "urlCheck":Ljava/net/URL;
    .restart local v43    # "urlCheck":Ljava/net/URL;
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSSLSocket: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", url: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_3
    const/4 v4, 0x1

    if-lt v8, v4, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2414
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(mQCSocket != null) : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(mQCSSLSocket != null) : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2418
    :cond_5
    const/16 v32, 0x1

    .line 2532
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v33

    .line 2533
    .local v33, "ongoingId":I
    if-eqz v32, :cond_27

    .line 2534
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2406
    .end local v33    # "ongoingId":I
    :catch_0
    move-exception v23

    .line 2407
    .local v23, "ex":Ljava/net/MalformedURLException;
    :goto_5
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 2415
    .end local v23    # "ex":Ljava/net/MalformedURLException;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 2416
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 2420
    :cond_9
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    .line 2421
    if-eqz v28, :cond_11

    .line 2422
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v24

    check-cast v24, Ljavax/net/ssl/SSLSocketFactory;

    .line 2423
    .local v24, "factory":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    .line 2430
    .end local v24    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1400

    new-array v0, v4, [C

    move-object/from16 v17, v0

    .line 2431
    .local v17, "buffer":[C
    const/16 v29, 0x0

    .line 2432
    .local v29, "length":I
    const/16 v27, 0x0

    .line 2433
    .local v27, "in":Ljava/io/InputStream;
    if-eqz v28, :cond_14

    .line 2434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    .line 2438
    :goto_8
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2439
    .local v16, "br":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    .line 2442
    .local v30, "line":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2445
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2446
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    .line 2450
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v31

    .line 2451
    .local v31, "message":Landroid/os/Message;
    move-object/from16 v0, v31

    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 2452
    const v4, 0x2105b

    move-object/from16 v0, v31

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    int-to-long v0, v5

    move-wide/from16 v46, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v46

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2455
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_a
    if-eqz v30, :cond_1a

    const-string v4, "301"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    const-string v4, "302"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    const-string v4, "303"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 2459
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2460
    const/16 v34, 0x0

    .line 2462
    .local v34, "redirectURL":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_e

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 2464
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_d
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_c

    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Location:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2467
    const/16 v4, 0x9

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 2468
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "redirectURL : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_e
    if-eqz v28, :cond_15

    .line 2473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 2474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2475
    if-nez v34, :cond_19

    .line 2476
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t get redirect URL from response! (SSL)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_f
    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4}, Ljava/net/SocketException;-><init>()V

    throw v4
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2521
    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v26    # "i":I
    .end local v27    # "in":Ljava/io/InputStream;
    .end local v29    # "length":I
    .end local v30    # "line":Ljava/lang/String;
    .end local v31    # "message":Landroid/os/Message;
    .end local v34    # "redirectURL":Ljava/lang/String;
    :catch_1
    move-exception v41

    .line 2522
    .local v41, "ste":Ljava/net/SocketTimeoutException;
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "SocketTimeoutException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_10
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    move-wide/from16 v46, v0

    sub-long v4, v4, v46

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v36, v4, 0x3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v33

    .line 2533
    .restart local v33    # "ongoingId":I
    if-eqz v32, :cond_2f

    .line 2534
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2426
    .end local v33    # "ongoingId":I
    .end local v41    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v26    # "i":I
    :cond_11
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    .line 2524
    .end local v26    # "i":I
    :catch_2
    move-exception v21

    .line 2525
    .local v21, "ee":Ljava/lang/Exception;
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_12
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2527
    :cond_13
    const/16 v36, -0x1

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v33

    .line 2533
    .restart local v33    # "ongoingId":I
    if-eqz v32, :cond_37

    .line 2534
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2436
    .end local v21    # "ee":Ljava/lang/Exception;
    .end local v33    # "ongoingId":I
    .restart local v17    # "buffer":[C
    .restart local v26    # "i":I
    .restart local v27    # "in":Ljava/io/InputStream;
    .restart local v29    # "length":I
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    goto/16 :goto_8

    .line 2480
    .restart local v16    # "br":Ljava/io/BufferedReader;
    .restart local v30    # "line":Ljava/lang/String;
    .restart local v31    # "message":Landroid/os/Message;
    .restart local v34    # "redirectURL":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2481
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 2482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2483
    if-nez v34, :cond_19

    .line 2484
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t get redirect URL from response!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_17
    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4}, Ljava/net/SocketException;-><init>()V

    throw v4
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2528
    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v26    # "i":I
    .end local v27    # "in":Ljava/io/InputStream;
    .end local v29    # "length":I
    .end local v30    # "line":Ljava/lang/String;
    .end local v31    # "message":Landroid/os/Message;
    .end local v34    # "redirectURL":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 2529
    .local v15, "ae":Ljava/lang/AssertionError;
    :try_start_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AssertionError occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2530
    :cond_18
    const/16 v36, -0x1

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v33

    .line 2533
    .restart local v33    # "ongoingId":I
    if-eqz v32, :cond_3f

    .line 2534
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2489
    .end local v15    # "ae":Ljava/lang/AssertionError;
    .end local v33    # "ongoingId":I
    .restart local v16    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "buffer":[C
    .restart local v26    # "i":I
    .restart local v27    # "in":Ljava/io/InputStream;
    .restart local v29    # "length":I
    .restart local v30    # "line":Ljava/lang/String;
    .restart local v31    # "message":Landroid/os/Message;
    .restart local v34    # "redirectURL":Ljava/lang/String;
    :cond_19
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    move-object/from16 v0, v34

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2490
    const/16 v32, 0x1

    .line 2491
    goto/16 :goto_4

    .line 2493
    .end local v34    # "redirectURL":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v39, 0x1400

    .line 2494
    .local v39, "size":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v5

    if-ne v4, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    move/from16 v42, v0

    .line 2495
    .local v42, "targetBytes":I
    :goto_9
    move/from16 v35, v42

    .line 2496
    .local v35, "remainBytes":I
    :cond_1b
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v20

    .local v20, "count":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_1d

    .line 2497
    sub-int v35, v35, v20

    .line 2498
    add-int v29, v29, v20

    .line 2499
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "length : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " count: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    :cond_1c
    if-gtz v35, :cond_26

    .line 2503
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    move-wide/from16 v46, v0

    sub-long v4, v4, v46

    long-to-int v4, v4

    add-int v37, v37, v4

    .line 2504
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rtt : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " ms"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v18

    .line 2506
    .local v18, "bytes":I
    move/from16 v0, v29

    move/from16 v1, v42

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v5

    if-eq v4, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    if-eqz v4, :cond_20

    .line 2508
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v29

    mul-int/lit16 v4, v0, 0x5cc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit16 v4, v4, 0x596

    mul-int/lit16 v4, v4, 0x3e8

    div-int v4, v4, v37

    add-int v36, v36, v4

    .line 2510
    :cond_20
    move/from16 v0, v36

    move/from16 v1, v18

    if-ge v0, v1, :cond_21

    .line 2511
    move/from16 v36, v18

    .line 2513
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v5

    if-eq v4, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    if-nez v4, :cond_24

    .line 2514
    :cond_22
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_24

    .line 2515
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "Before socket timeout, all data had been received successfully."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_23
    move/from16 v36, v42

    .line 2420
    :cond_24
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    .line 2494
    .end local v18    # "bytes":I
    .end local v20    # "count":I
    .end local v35    # "remainBytes":I
    .end local v42    # "targetBytes":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    move/from16 v42, v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_9

    .line 2501
    .restart local v20    # "count":I
    .restart local v35    # "remainBytes":I
    .restart local v42    # "targetBytes":I
    :cond_26
    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    move/from16 v39, v35

    goto/16 :goto_a

    .line 2536
    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v20    # "count":I
    .end local v26    # "i":I
    .end local v27    # "in":Ljava/io/InputStream;
    .end local v29    # "length":I
    .end local v30    # "line":Ljava/lang/String;
    .end local v31    # "message":Landroid/os/Message;
    .end local v35    # "remainBytes":I
    .end local v39    # "size":I
    .end local v42    # "targetBytes":I
    .restart local v33    # "ongoingId":I
    :cond_27
    if-nez v33, :cond_28

    .line 2537
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2541
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 2543
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2544
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    .line 2548
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 2551
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    .line 2555
    :cond_2b
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2556
    move/from16 v0, v33

    if-ne v8, v0, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2558
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v36

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    :cond_2d
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2561
    :cond_2e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2536
    .restart local v41    # "ste":Ljava/net/SocketTimeoutException;
    :cond_2f
    if-nez v33, :cond_30

    .line 2537
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2541
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 2543
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2544
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 2548
    :cond_32
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 2551
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 2555
    :cond_33
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2556
    move/from16 v0, v33

    if-ne v8, v0, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2558
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v36

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    :cond_35
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2561
    :cond_36
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2536
    .end local v41    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v21    # "ee":Ljava/lang/Exception;
    :cond_37
    if-nez v33, :cond_38

    .line 2537
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2541
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 2543
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2544
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 2548
    :cond_3a
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 2551
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 2555
    :cond_3b
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2556
    move/from16 v0, v33

    if-ne v8, v0, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2558
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v36

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    :cond_3d
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2561
    :cond_3e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2536
    .end local v21    # "ee":Ljava/lang/Exception;
    .restart local v15    # "ae":Ljava/lang/AssertionError;
    :cond_3f
    if-nez v33, :cond_40

    .line 2537
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2541
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 2543
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2544
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 2548
    :cond_42
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 2551
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 2555
    :cond_43
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2556
    move/from16 v0, v33

    if-ne v8, v0, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21027

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_46

    .line 2558
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send qc result...id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21025

    move/from16 v0, v36

    invoke-static {v4, v5, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    :cond_45
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105e

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x2105b

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2561
    :cond_46
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    const/4 v10, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2532
    .end local v15    # "ae":Ljava/lang/AssertionError;
    .end local v33    # "ongoingId":I
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v33

    .line 2533
    .restart local v33    # "ongoingId":I
    if-eqz v32, :cond_47

    .line 2534
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "couldn\'t test quality by problem on using socket!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2536
    :cond_47
    if-nez v33, :cond_48

    .line 2537
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality id["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "] was already timed out!"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2541
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 2543
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    .line 2544
    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 2548
    :cond_4a
    :goto_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 2551
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 2555
    :cond_4b
    :goto_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2556
    move/from16 v0, v33

    if-ne v8, v0, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x21027

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 2558
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send qc result...id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x21025

    move/from16 v0, v36

    invoke-static {v5, v9, v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    :cond_4d
    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105c

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105d

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105e

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    const v9, 0x2105b

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2567
    throw v4

    .line 2561
    :cond_4e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_4d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v9, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v13

    const/4 v13, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2571
    .end local v6    # "ip":I
    .end local v7    # "qcUrl":Ljava/lang/String;
    .end local v8    # "id":I
    .end local v28    # "isSSLSocket":Z
    .end local v32    # "needSkip":Z
    .end local v33    # "ongoingId":I
    .end local v36    # "resultBytes":I
    .end local v37    # "rtt":I
    .end local v43    # "urlCheck":Ljava/net/URL;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v5, "[CONNECT_CAPTIVE_PORTAL]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_4f
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 2573
    .local v11, "captivePortalIp":I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 2574
    .local v12, "captivePortalUrl":Ljava/lang/String;
    const/16 v25, 0x0

    .line 2575
    .local v25, "firstLine":Ljava/lang/String;
    const/16 v40, -0x1

    .line 2576
    .local v40, "statusCode":I
    const/16 v38, 0x0

    .line 2579
    .local v38, "sameLocation":Z
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    .line 2581
    const/16 v4, 0x32

    new-array v0, v4, [C

    move-object/from16 v17, v0

    .line 2582
    .restart local v17    # "buffer":[C
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    .line 2583
    .restart local v27    # "in":Ljava/io/InputStream;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2584
    .restart local v16    # "br":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    .line 2585
    if-eqz v25, :cond_53

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_53

    .line 2586
    const/16 v4, 0x9

    const/16 v5, 0xc

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2587
    .local v19, "code":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response code : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2588
    const/16 v4, 0x64

    move/from16 v0, v19

    if-lt v0, v4, :cond_53

    const/16 v4, 0x3e7

    move/from16 v0, v19

    if-ge v0, v4, :cond_53

    .line 2589
    move/from16 v40, v19

    .line 2590
    const/16 v30, 0x0

    .line 2591
    .restart local v30    # "line":Ljava/lang/String;
    const/16 v34, 0x0

    .line 2593
    .restart local v34    # "redirectURL":Ljava/lang/String;
    :cond_50
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_52

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_52

    .line 2595
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_51
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_50

    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Location:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2598
    const/16 v4, 0x9

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 2599
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "redirectURL : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_52
    if-eqz v34, :cond_53

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "same Location : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    const/16 v38, 0x1

    .line 2610
    .end local v19    # "code":I
    .end local v30    # "line":Ljava/lang/String;
    .end local v34    # "redirectURL":Ljava/lang/String;
    :cond_53
    if-gez v40, :cond_57

    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4}, Ljava/net/SocketException;-><init>()V

    throw v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2611
    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v27    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v22

    .line 2612
    .local v22, "eee":Ljava/lang/Exception;
    :try_start_15
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_54
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 2614
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 2615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-static {v4, v5, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2619
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2620
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 2623
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    if-lez v40, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    const v9, 0x2102c

    if-eqz v38, :cond_5a

    const/4 v4, 0x1

    :goto_1b
    move/from16 v0, v40

    invoke-static {v5, v9, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2617
    .end local v22    # "eee":Ljava/lang/Exception;
    .restart local v16    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "buffer":[C
    .restart local v27    # "in":Ljava/io/InputStream;
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2619
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2620
    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    .line 2623
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    if-lez v40, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    const v9, 0x2102c

    if-eqz v38, :cond_59

    const/4 v4, 0x1

    :goto_1d
    move/from16 v0, v40

    invoke-static {v5, v9, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x2102d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2629
    :cond_59
    const/4 v4, 0x0

    goto :goto_1d

    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v27    # "in":Ljava/io/InputStream;
    .restart local v22    # "eee":Ljava/lang/Exception;
    :cond_5a
    const/4 v4, 0x0

    goto/16 :goto_1b

    .line 2617
    .end local v22    # "eee":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 2619
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    .line 2620
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    .line 2623
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_5c

    if-lez v40, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v9, 0x2102d

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v9

    const v10, 0x2102c

    if-eqz v38, :cond_5d

    const/4 v4, 0x1

    :goto_1f
    move/from16 v0, v40

    invoke-static {v9, v10, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v4

    const v9, 0x2102d

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    :cond_5c
    throw v5

    .line 2629
    :cond_5d
    const/4 v4, 0x0

    goto :goto_1f

    .line 2621
    :catch_5
    move-exception v4

    goto :goto_1e

    .restart local v22    # "eee":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    goto/16 :goto_1a

    .end local v22    # "eee":Ljava/lang/Exception;
    .restart local v16    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "buffer":[C
    .restart local v27    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    goto/16 :goto_1c

    .line 2552
    .end local v11    # "captivePortalIp":I
    .end local v12    # "captivePortalUrl":Ljava/lang/String;
    .end local v16    # "br":Ljava/io/BufferedReader;
    .end local v17    # "buffer":[C
    .end local v25    # "firstLine":Ljava/lang/String;
    .end local v27    # "in":Ljava/io/InputStream;
    .end local v38    # "sameLocation":Z
    .end local v40    # "statusCode":I
    .restart local v6    # "ip":I
    .restart local v7    # "qcUrl":Ljava/lang/String;
    .restart local v8    # "id":I
    .restart local v28    # "isSSLSocket":Z
    .restart local v32    # "needSkip":Z
    .restart local v33    # "ongoingId":I
    .restart local v36    # "resultBytes":I
    .restart local v37    # "rtt":I
    .restart local v43    # "urlCheck":Ljava/net/URL;
    :catch_8
    move-exception v5

    goto/16 :goto_18

    .line 2545
    :catch_9
    move-exception v5

    goto/16 :goto_17

    .line 2552
    .restart local v15    # "ae":Ljava/lang/AssertionError;
    :catch_a
    move-exception v4

    goto/16 :goto_15

    .line 2545
    :catch_b
    move-exception v4

    goto/16 :goto_14

    .line 2552
    .end local v15    # "ae":Ljava/lang/AssertionError;
    .restart local v21    # "ee":Ljava/lang/Exception;
    :catch_c
    move-exception v4

    goto/16 :goto_12

    .line 2545
    :catch_d
    move-exception v4

    goto/16 :goto_11

    .line 2552
    .end local v21    # "ee":Ljava/lang/Exception;
    .restart local v41    # "ste":Ljava/net/SocketTimeoutException;
    :catch_e
    move-exception v4

    goto/16 :goto_f

    .line 2545
    :catch_f
    move-exception v4

    goto/16 :goto_e

    .line 2552
    .end local v41    # "ste":Ljava/net/SocketTimeoutException;
    :catch_10
    move-exception v4

    goto/16 :goto_c

    .line 2545
    :catch_11
    move-exception v4

    goto/16 :goto_b

    .line 2406
    .end local v33    # "ongoingId":I
    .end local v43    # "urlCheck":Ljava/net/URL;
    .restart local v44    # "urlCheck":Ljava/net/URL;
    :catch_12
    move-exception v23

    move-object/from16 v43, v44

    .end local v44    # "urlCheck":Ljava/net/URL;
    .restart local v43    # "urlCheck":Ljava/net/URL;
    goto/16 :goto_5

    .line 2389
    :sswitch_data_0
    .sparse-switch
        0x21024 -> :sswitch_0
        0x2102b -> :sswitch_1
    .end sparse-switch
.end method
