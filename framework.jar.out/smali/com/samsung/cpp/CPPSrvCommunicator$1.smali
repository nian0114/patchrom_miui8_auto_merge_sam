.class Lcom/samsung/cpp/CPPSrvCommunicator$1;
.super Ljava/lang/Object;
.source "CPPSrvCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$dbType:I

.field final synthetic val$mode:I

.field final synthetic val$rat:I

.field final synthetic val$req_id:J

.field final synthetic val$retryCount:I

.field final synthetic val$type:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;IJIILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    iput-object p2, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    iput-wide p4, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    iput p6, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    iput p7, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    iput-object p8, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    iput p9, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    iput p10, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v26

    .line 95
    .local v26, "msg":Landroid/os/Message;
    new-instance v36, Landroid/os/Bundle;

    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v36, "result":Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 97
    .local v17, "conn":Ljava/net/HttpURLConnection;
    const/16 v31, 0x0

    .line 98
    .local v31, "out":Ljava/io/DataOutputStream;
    const/16 v28, 0x0

    .line 100
    .local v28, "needCellDBRetry":Z
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retryCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() body : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_0
    const-string v29, ""

    .line 106
    .local v29, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const v3, 0x15f90

    if-ne v2, v3, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/v1/policy/wifi?_method=GET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 144
    :cond_0
    :goto_0
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 147
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/HttpsURLConnection;

    .line 148
    .local v18, "conn1":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v2, Lcom/samsung/cpp/CPPSrvCommunicator$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/cpp/CPPSrvCommunicator$1$1;-><init>(Lcom/samsung/cpp/CPPSrvCommunicator$1;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v19

    .line 162
    .local v19, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 163
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v19    # "context":Ljavax/net/ssl/SSLContext;
    :goto_1
    move-object/from16 v17, v18

    .line 174
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    :goto_2
    const/16 v2, 0x1770

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_d

    .line 177
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() POST TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v2, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 194
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->connect()V

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_2

    .line 199
    :cond_1
    new-instance v32, Ljava/io/DataOutputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .local v32, "out":Ljava/io/DataOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    .line 201
    .local v25, "message":[B
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() send message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 203
    invoke-virtual/range {v32 .. v32}, Ljava/io/DataOutputStream;->size()I

    move-result v37

    .line 204
    .local v37, "sizeOfSendData":I
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() sizeOfSendData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual/range {v32 .. v32}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v31, v32

    .line 208
    .end local v25    # "message":[B
    .end local v32    # "out":Ljava/io/DataOutputStream;
    .end local v37    # "sizeOfSendData":I
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 209
    .local v22, "httpResponseCode":I
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Http Response Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    .line 211
    .local v23, "httpResponseMsg":Ljava/lang/String;
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Http Response Msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "http_response_code"

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v2, "http_response_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/16 v2, 0xc8

    move/from16 v0, v22

    if-ne v0, v2, :cond_16

    .line 218
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 219
    .local v24, "is":Ljava/io/InputStream;
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v30, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v14, v2, [B

    .line 223
    .local v14, "byteBuffer":[B
    :goto_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v27

    .local v27, "nLength":I
    if-lez v27, :cond_f

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v14, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 270
    .end local v14    # "byteBuffer":[B
    .end local v22    # "httpResponseCode":I
    .end local v23    # "httpResponseMsg":Ljava/lang/String;
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v29    # "newUrl":Ljava/lang/String;
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v20

    .line 272
    .local v20, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() executeRequest.Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "http_response_code"

    const/4 v3, 0x5

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v2, "http_response_msg"

    const-string v3, "IOException"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_3

    .line 276
    const/16 v28, 0x1

    .line 277
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(IOException) --> retry flag set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 281
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_19

    if-eqz v28, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    .line 282
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$000(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 297
    :goto_6
    if-eqz v17, :cond_4

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 301
    :cond_4
    if-eqz v31, :cond_5

    .line 302
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 308
    .end local v20    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    return-void

    .line 110
    .restart local v29    # "newUrl":Ljava/lang/String;
    :cond_6
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/v1/policy?_method=GET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 112
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_9

    .line 114
    const-string v12, "v3"

    .line 115
    .local v12, "apiVer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    sparse-switch v2, :sswitch_data_0

    .line 135
    const-string v34, "lte"

    .line 138
    .local v34, "ratName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 139
    const-string v12, "v5"

    .line 140
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cells/cust/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?_method=POST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 141
    goto/16 :goto_0

    .line 117
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_0
    const-string v34, "lte"

    .line 118
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 120
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_1
    const-string v34, "wcdma"

    .line 121
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 123
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_2
    const-string v34, "gsm"

    .line 124
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 126
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_3
    const-string v34, "cdma1x"

    .line 127
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 129
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_4
    const-string v34, "tdscdma"

    .line 130
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 132
    .end local v34    # "ratName":Ljava/lang/String;
    :sswitch_5
    const-string v34, "wifi"

    .line 133
    .restart local v34    # "ratName":Ljava/lang/String;
    goto :goto_8

    .line 141
    .end local v12    # "apiVer":Ljava/lang/String;
    .end local v34    # "ratName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v29, v0

    goto/16 :goto_0

    .line 164
    .restart local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    :catch_1
    move-exception v20

    .line 165
    .local v20, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual/range {v20 .. v20}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 281
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .end local v20    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v29    # "newUrl":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v38, v2

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1b

    if-eqz v28, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1b

    .line 282
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$000(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 297
    :goto_a
    if-eqz v17, :cond_a

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 301
    :cond_a
    if-eqz v31, :cond_b

    .line 302
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 306
    :cond_b
    :goto_b
    throw v38

    .line 166
    .restart local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v29    # "newUrl":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 167
    .local v20, "e":Ljava/security/KeyManagementException;
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto/16 :goto_1

    .line 172
    .end local v18    # "conn1":Ljavax/net/ssl/HttpsURLConnection;
    .end local v20    # "e":Ljava/security/KeyManagementException;
    :cond_c
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 181
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_e

    .line 182
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() POST TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 185
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    :cond_e
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() GET TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 189
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 226
    .restart local v14    # "byteBuffer":[B
    .restart local v22    # "httpResponseCode":I
    .restart local v23    # "httpResponseMsg":Ljava/lang/String;
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "nLength":I
    .restart local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 227
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 229
    .local v15, "byteData":[B
    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 230
    .local v13, "bCode":[B
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v16, v2, -0x30

    .line 231
    .local v16, "code":I
    const-string v2, "result_code"

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_14

    .line 234
    if-nez v16, :cond_12

    .line 235
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v2, 0x3e

    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v33

    .line 237
    .local v33, "parsedByte":[B
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 238
    const-string v2, "size"

    move-object/from16 v0, v33

    array-length v3, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .end local v33    # "parsedByte":[B
    :goto_c
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_SIZE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_REQ_ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_MSG (byteData) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 281
    .end local v13    # "bCode":[B
    .end local v14    # "byteBuffer":[B
    .end local v15    # "byteData":[B
    .end local v16    # "code":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_17

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_17

    .line 282
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() CellDBRequest Retry --> call executeRequest / req_id("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), json("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$retryCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$dbType:I

    # invokes: Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    invoke-static/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$000(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V

    .line 297
    :goto_e
    if-eqz v17, :cond_11

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 301
    :cond_11
    if-eqz v31, :cond_5

    .line 302
    :try_start_a
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_7

    .line 304
    :catch_3
    move-exception v21

    .line 305
    .local v21, "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 239
    .end local v21    # "ex":Ljava/io/IOException;
    .restart local v13    # "bCode":[B
    .restart local v14    # "byteBuffer":[B
    .restart local v15    # "byteData":[B
    .restart local v16    # "code":I
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "nLength":I
    .restart local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_12
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_13

    .line 240
    :try_start_b
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Policy Update is Required"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 242
    const-string v2, "size"

    array-length v3, v15

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 244
    :cond_13
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(HTTP_OK && NOT SUCCESS)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 246
    const-string v2, "size"

    array-length v3, v15

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const/16 v28, 0x0

    goto/16 :goto_c

    .line 250
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const v3, 0x15f90

    if-ne v2, v3, :cond_15

    .line 251
    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    .line 252
    .local v35, "response":Ljava/lang/String;
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "body"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest() Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PLMN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RESULT_MSG (response) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 256
    .end local v35    # "response":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x7530

    if-ne v2, v3, :cond_10

    .line 257
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Result Code : Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v2, "result_msg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 259
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 260
    const-string v2, "mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$mode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 263
    .end local v13    # "bCode":[B
    .end local v14    # "byteBuffer":[B
    .end local v15    # "byteData":[B
    .end local v16    # "code":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "nLength":I
    .end local v30    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_16
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Http Response : Fail !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_10

    .line 265
    const/16 v28, 0x1

    .line 266
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() CellDBRequest Failure(HTTP_FAIL) --> retry flag set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_d

    .line 285
    :cond_17
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_18

    .line 290
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e

    .line 285
    .end local v22    # "httpResponseCode":I
    .end local v23    # "httpResponseMsg":Ljava/lang/String;
    .end local v29    # "newUrl":Ljava/lang/String;
    .local v20, "e":Ljava/io/IOException;
    :cond_19
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1a

    .line 290
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    :cond_1a
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 304
    :catch_4
    move-exception v21

    .line 305
    .restart local v21    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 285
    .end local v20    # "e":Ljava/io/IOException;
    .end local v21    # "ex":Ljava/io/IOException;
    :cond_1b
    const-string v2, "CPPSrvCommunicator"

    const-string v3, "executeRequest() Send result to CPPProvider ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x6

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$rat:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$type:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_1c

    .line 290
    const-string v2, "req_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->val$req_id:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    :cond_1c
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;->this$0:Lcom/samsung/cpp/CPPSrvCommunicator;

    # getter for: Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPSrvCommunicator;->access$100(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 304
    :catch_5
    move-exception v21

    .line 305
    .restart local v21    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 281
    .end local v21    # "ex":Ljava/io/IOException;
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .restart local v29    # "newUrl":Ljava/lang/String;
    .restart local v32    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v38, v2

    move-object/from16 v31, v32

    .end local v32    # "out":Ljava/io/DataOutputStream;
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_9

    .line 270
    .end local v31    # "out":Ljava/io/DataOutputStream;
    .restart local v32    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v20

    move-object/from16 v31, v32

    .end local v32    # "out":Ljava/io/DataOutputStream;
    .restart local v31    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
