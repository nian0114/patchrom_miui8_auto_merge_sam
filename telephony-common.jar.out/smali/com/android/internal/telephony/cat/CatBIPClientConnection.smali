.class Lcom/android/internal/telephony/cat/CatBIPClientConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

.field NetworkAccessname:Ljava/lang/String;

.field bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field destination:Ljava/net/InetAddress;

.field in:Ljava/io/DataInputStream;

.field isLinkEstablished:Z

.field isfirstTime:Z

.field lastReadPosition:I

.field out:Ljava/io/DataOutputStream;

.field passwd:Ljava/lang/String;

.field receiver:Ljava/lang/Thread;

.field rxBuf:Ljava/io/ByteArrayOutputStream;

.field rxBytes:[B

.field socket:Ljava/lang/Object;

.field txBuf:Ljava/io/ByteArrayOutputStream;

.field txIndex:I

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bearerDesc"    # Lcom/android/internal/telephony/cat/BearerDescription;
    .param p2, "buffSize"    # I
    .param p3, "iface"    # Lcom/android/internal/telephony/cat/TransportLevel;
    .param p4, "catBIPManager"    # Lcom/android/internal/telephony/cat/CatBIPManager;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "mode"    # Lcom/android/internal/telephony/cat/BearerMode;
    .param p7, "dest"    # Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .param p8, "userName"    # Ljava/lang/String;
    .param p9, "passwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 119
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 120
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 124
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 126
    if-eqz p7, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p7, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "UnknownHostException while getting the Data destination IP Address"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    goto :goto_0
.end method


# virtual methods
.method public getRxData(I)[B
    .locals 6
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 266
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 296
    :goto_0
    return-object v1

    .line 269
    :cond_0
    const-string v3, "rxbuf.size != null!!"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    if-nez v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    .line 277
    .local v0, "bytesAvailable":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytesAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  rxBytes.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  lastReadPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    if-le p1, v0, :cond_2

    .line 279
    move p1, v0

    .line 281
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-array v1, p1, [B

    .line 284
    .local v1, "tmp":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-static {v3, v4, v1, v5, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 285
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastReadPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 289
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    .line 290
    const-string v2, "reset buffer rxbuf"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 295
    :cond_3
    const-string v2, "return now!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setupStreams()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "isException":Z
    const/4 v3, 0x0

    .line 140
    .local v3, "s":Ljava/net/Socket;
    const v6, 0xea60

    .line 143
    .local v6, "timeout":I
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Opening socket with"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v10, v10, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 146
    .local v7, "tmp":[B
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_0

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v7, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    const-string v9, "Opening TCP socket"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v3    # "s":Ljava/net/Socket;
    .local v4, "s":Ljava/net/Socket;
    :try_start_1
    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v11, v11, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v9, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 154
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 155
    const-string v9, "Opening input stream"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 157
    const-string v9, "Opening output stream"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 159
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/cat/tcpRxThread;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/cat/tcpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 160
    const-string v9, "Created receiver thread"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 170
    .end local v4    # "s":Ljava/net/Socket;
    .restart local v3    # "s":Ljava/net/Socket;
    :goto_1
    const/4 v9, 0x1

    :try_start_2
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 172
    const-string v9, "Successfully setup streams!"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    iget v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 174
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    iget v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    .line 175
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 176
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 177
    const-string v9, "txBuff & rxBuff created!"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "LGT"

    const-string v10, "EUR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "true"

    const-string v10, "ril.domesticOtaStart"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v2, :cond_1

    .line 211
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendBipOtaFailIntent()V

    .line 214
    :cond_1
    return-void

    .line 163
    :cond_2
    :try_start_3
    const-string v9, "Opening UDP socket"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 165
    .local v0, "ds":Ljava/net/DatagramSocket;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v10, v10, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v0, v9, v10}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 166
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 167
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/cat/udpRxThread;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/cat/udpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 168
    const-string v9, "Created receiver thread"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 180
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .end local v7    # "tmp":[B
    .end local v8    # "x":I
    :catch_0
    move-exception v5

    .line 181
    .local v5, "ste":Ljava/net/SocketTimeoutException;
    :goto_2
    iput-boolean v12, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 182
    iput-boolean v13, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Socket Timeout Exception Socket is not connected\nlinkEstablished ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x1

    .line 188
    new-instance v9, Ljava/net/SocketTimeoutException;

    const-string v10, "TIMEOUT"

    invoke-direct {v9, v10}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 190
    .end local v5    # "ste":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, "io":Ljava/io/IOException;
    :goto_3
    iput-boolean v12, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 192
    iput-boolean v13, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO Exception while creating socket streams\nlinkEstablished ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const/4 v2, 0x1

    .line 199
    if-eqz v3, :cond_3

    .line 200
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 204
    :cond_3
    :goto_4
    throw v1

    .line 202
    :catch_2
    move-exception v9

    goto :goto_4

    .line 190
    .end local v1    # "io":Ljava/io/IOException;
    .end local v3    # "s":Ljava/net/Socket;
    .restart local v4    # "s":Ljava/net/Socket;
    .restart local v7    # "tmp":[B
    .restart local v8    # "x":I
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "s":Ljava/net/Socket;
    .restart local v3    # "s":Ljava/net/Socket;
    goto :goto_3

    .line 180
    .end local v3    # "s":Ljava/net/Socket;
    .restart local v4    # "s":Ljava/net/Socket;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "s":Ljava/net/Socket;
    .restart local v3    # "s":Ljava/net/Socket;
    goto :goto_2
.end method

.method public terminateStreams()V
    .locals 6

    .prologue
    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the streams  for channel ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 224
    :cond_0
    const-string v4, "Closing input stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 228
    :cond_1
    const-string v4, "Closing output stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 232
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    .line 233
    .local v3, "s":Ljava/net/Socket;
    const-string v4, "Closing socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 237
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 247
    .end local v3    # "s":Ljava/net/Socket;
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 248
    const-string v4, "Closed Streams Successfully"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    :goto_1
    return-void

    .line 239
    :cond_4
    const-string v4, "closing UDP socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    .line 242
    .local v0, "ds":Ljava/net/DatagramSocket;
    if-eqz v0, :cond_5

    .line 243
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 245
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 250
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "io":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    .end local v2    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A generic Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
