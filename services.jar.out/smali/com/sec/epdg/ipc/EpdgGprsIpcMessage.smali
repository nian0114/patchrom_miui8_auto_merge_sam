.class public Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgGprsIpcMessage.java"


# static fields
.field private static final APN_NAME_LENGTH:I = 0x65

.field private static final CALL_STATUS_FAILURE:B = 0x0t

.field private static final CALL_STATUS_SUCCESS:B = 0x1t

.field private static final GPRS_CALL_STATUS_LENGTH:I = 0x5

.field private static final GPRS_EPDG_STATUS_LENGTH:I = 0x2

.field private static final GPRS_IPCONFIG_LENGTH:I = 0x98

.field private static final IPV4_ADDR_LENGTH:I = 0x4

.field private static final IPV6_ADDR_LENGTH:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "[GPRSIPCMESSAGE]"

.field private static final USER_AUTHENTICATION_FAILED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    return-void
.end method

.method private copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z
    .locals 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "byteIndex"    # I
    .param p4, "maxLen"    # I

    .prologue
    const/4 v7, 0x1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v7

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "[GPRSIPCMESSAGE]"

    const-string v5, "loopback address. skip "

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v4, "[GPRSIPCMESSAGE]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fatal error: Code should not hit here. Now checking for ipAddr, ipAddr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .local v2, "ipAddrByteArray":[B
    array-length v3, v2

    .local v3, "ipAddrLen":I
    if-le v3, p4, :cond_2

    move v3, p4

    :cond_2
    const/4 v4, 0x0

    invoke-static {v2, v4, p2, p3, v3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public decodeDefinePdpContext()Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .locals 13

    .prologue
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v8, "dis":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .local v7, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    const/16 v11, 0x65

    :try_start_0
    new-array v2, v11, [B

    .local v2, "apnName":[B
    const/4 v11, 0x4

    new-array v4, v11, [B

    .local v4, "ipv4Addr":[B
    const/16 v11, 0x10

    new-array v3, v11, [B

    .local v3, "ipv6Addr":[B
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .local v1, "cid":I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    const/4 v11, 0x0

    const/16 v12, 0x65

    invoke-virtual {v8, v2, v11, v12}, Ljava/io/DataInputStream;->read([BII)I

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-virtual {v8, v3, v11, v12}, Ljava/io/DataInputStream;->read([BII)I

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v8, v4, v11, v12}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .local v5, "pcscfReq":I
    new-instance v0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;-><init>(I[B[B[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .local v0, "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "cid":I
    .end local v2    # "apnName":[B
    .end local v3    # "ipv6Addr":[B
    .end local v4    # "ipv4Addr":[B
    .end local v5    # "pcscfReq":I
    :goto_0
    return-object v0

    .restart local v1    # "cid":I
    .restart local v2    # "apnName":[B
    .restart local v3    # "ipv6Addr":[B
    .restart local v4    # "ipv4Addr":[B
    .restart local v5    # "pcscfReq":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .end local v1    # "cid":I
    .end local v2    # "apnName":[B
    .end local v3    # "ipv6Addr":[B
    .end local v4    # "ipv4Addr":[B
    .end local v5    # "pcscfReq":I
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :catch_1
    move-exception v10

    .local v10, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v7

    .end local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .restart local v0    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    goto :goto_0

    .end local v0    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .restart local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v7

    .end local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .restart local v0    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    goto :goto_0

    .end local v0    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v7    # "defPdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v11

    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public decodePdpContext()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    .locals 8

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .local v5, "pdpCtxtInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .local v6, "state":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .local v1, "cid":I
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setState(I)V

    invoke-virtual {v5, v1}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->setCid(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "cid":I
    .end local v6    # "state":I
    :goto_0
    return-object v5

    .restart local v1    # "cid":I
    .restart local v6    # "state":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "cid":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "state":I
    :catch_1
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v7

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public encodeGprsCallStatus(IIZ)Z
    .locals 4
    .param p1, "cid"    # I
    .param p2, "data_call_state"    # I
    .param p3, "isPermanentFail"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x5

    new-array v0, v1, [B

    .local v0, "data":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    if-ne p2, v3, :cond_1

    aput-byte v3, v0, v3

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    return v3

    :cond_1
    aput-byte v2, v0, v3

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public encodeGprsEpdgStatus(II)Z
    .locals 4
    .param p1, "pdn_type"    # I
    .param p2, "reg_status"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    int-to-byte v1, p2

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    return v3
.end method

.method public encodeGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "cid"    # I
    .param p2, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv4Dns"    # [Ljava/lang/String;
    .param p5, "ipv4Gateway"    # Ljava/lang/String;
    .param p6, "ipv4SubnetMask"    # Ljava/lang/String;
    .param p7, "ipv4Pcscf"    # [Ljava/lang/String;
    .param p8, "ipv6Addr"    # Ljava/lang/String;
    .param p9, "ipv6Pcscf"    # [Ljava/lang/String;
    .param p10, "ipv6Dns"    # [Ljava/lang/String;

    .prologue
    const/16 v6, 0x98

    new-array v1, v6, [B

    .local v1, "data":[B
    const/4 v6, 0x0

    int-to-byte v7, p1

    aput-byte v7, v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-byte v7, v1, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-byte v7, v1, v6

    invoke-static {}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->isIpc4VolteInterimUpdate()Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq p2, v6, :cond_0

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne p2, v6, :cond_6

    :cond_0
    if-eqz p3, :cond_1

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-direct {p0, p3, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_1
    if-eqz p4, :cond_3

    array-length v2, p4

    .local v2, "dnslen":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x7

    .local v4, "index":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v6, p4, v3

    const/4 v7, 0x4

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    if-nez v3, :cond_2

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    goto :goto_1

    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_3
    if-eqz p5, :cond_4

    const/16 v6, 0xf

    const/4 v7, 0x4

    invoke-direct {p0, p5, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_4
    if-eqz p6, :cond_5

    const/16 v6, 0x13

    const/4 v7, 0x4

    invoke-direct {p0, p6, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_5
    if-eqz p7, :cond_6

    move-object/from16 v0, p7

    array-length v5, v0

    .local v5, "pcscflen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x17

    .restart local v4    # "index":I
    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v6, p7, v3

    const/4 v7, 0x4

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x20

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "pcscflen":I
    :cond_6
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq p2, v6, :cond_7

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne p2, v6, :cond_19

    :cond_7
    if-eqz p8, :cond_8

    const/16 v6, 0x23

    const/16 v7, 0x10

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x40

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_8
    if-eqz p9, :cond_a

    move-object/from16 v0, p9

    array-length v5, v0

    .restart local v5    # "pcscflen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x33

    .restart local v4    # "index":I
    :goto_3
    if-ge v3, v5, :cond_9

    aget-object v6, p9, v3

    const/16 v7, 0x10

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_3

    :cond_9
    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "pcscflen":I
    :cond_a
    if-eqz p10, :cond_19

    move-object/from16 v0, p10

    array-length v2, v0

    .restart local v2    # "dnslen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x63

    .restart local v4    # "index":I
    :goto_4
    if-ge v3, v2, :cond_19

    aget-object v6, p10, v3

    const/16 v7, 0x10

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    if-nez v3, :cond_b

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_4

    :cond_b
    const/4 v6, 0x2

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    goto :goto_5

    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_c
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq p2, v6, :cond_d

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne p2, v6, :cond_13

    :cond_d
    if-eqz p3, :cond_e

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-direct {p0, p3, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_e
    if-eqz p4, :cond_10

    array-length v2, p4

    .restart local v2    # "dnslen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v4, 0x7

    .restart local v4    # "index":I
    :goto_6
    if-ge v3, v2, :cond_10

    aget-object v6, p4, v3

    const/4 v7, 0x4

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    if-nez v3, :cond_f

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :goto_7
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_6

    :cond_f
    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    goto :goto_7

    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_10
    if-eqz p5, :cond_11

    const/16 v6, 0xf

    const/4 v7, 0x4

    invoke-direct {p0, p5, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_11
    if-eqz p6, :cond_12

    const/16 v6, 0x13

    const/4 v7, 0x4

    invoke-direct {p0, p6, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_12
    if-eqz p7, :cond_13

    const/4 v6, 0x0

    aget-object v6, p7, v6

    const/16 v7, 0x17

    const/4 v8, 0x4

    invoke-direct {p0, v6, v1, v7, v8}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x20

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_13
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq p2, v6, :cond_14

    sget-object v6, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-ne p2, v6, :cond_19

    :cond_14
    if-eqz p8, :cond_15

    const/16 v6, 0x1b

    const/16 v7, 0x10

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x40

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :cond_15
    if-eqz p9, :cond_17

    move-object/from16 v0, p9

    array-length v5, v0

    .restart local v5    # "pcscflen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x2b

    .restart local v4    # "index":I
    :goto_8
    if-ge v3, v5, :cond_16

    aget-object v6, p9, v3

    const/16 v7, 0x10

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_8

    :cond_16
    const/4 v6, 0x1

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "pcscflen":I
    :cond_17
    if-eqz p10, :cond_19

    move-object/from16 v0, p10

    array-length v2, v0

    .restart local v2    # "dnslen":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/16 v4, 0x5b

    .restart local v4    # "index":I
    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v6, p10, v3

    const/16 v7, 0x10

    invoke-direct {p0, v6, v1, v4, v7}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->copyIPAddrStrToByteArray(Ljava/lang/String;[BII)Z

    if-nez v3, :cond_18

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    :goto_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x10

    goto :goto_9

    :cond_18
    const/4 v6, 0x2

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    goto :goto_a

    .end local v2    # "dnslen":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_19
    iput-object v1, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    const/4 v6, 0x1

    return v6
.end method

.method public encodePdpContext(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "ctxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    sget v5, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, 0x1

    .local v3, "length":I
    new-array v0, v3, [B

    .local v0, "data":[B
    const-string v5, "[GPRSIPCMESSAGE]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodePdpContext ctxtInfo Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    sget v6, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    sget v5, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    .local v4, "mCtxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    invoke-virtual {v4}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getCid()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->getState()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v4    # "mCtxInfo":Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    :cond_0
    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->mIpcBody:[B

    const/4 v5, 0x1

    return v5
.end method
