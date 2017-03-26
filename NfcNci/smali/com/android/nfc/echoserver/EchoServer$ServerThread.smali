.class public Lcom/android/nfc/echoserver/EchoServer$ServerThread;
.super Ljava/lang/Thread;
.source "EchoServer.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerThread"
.end annotation


# instance fields
.field clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field running:Z

.field serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 182
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 183
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 184
    return-void
.end method

.method private handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 7
    .param p1, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "connectionBroken":Z
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 191
    .local v1, "dataUnit":[B
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 193
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v3

    .line 194
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "EchoServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    if-gez v3, :cond_3

    .line 196
    const/4 v0, 0x1

    .line 207
    .end local v3    # "size":I
    :cond_2
    return-void

    .line 199
    .restart local v3    # "size":I
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v4, v1, v3}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v3    # "size":I
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 204
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EchoServer"

    const-string v5, "connection broken by IOException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 211
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EchoServer"

    const-string v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    const/16 v1, 0x11

    const-string v2, "urn:nfc:sn:co-echo"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_2

    .line 219
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EchoServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v6

    .line 216
    .local v6, "e":Lcom/android/nfc/LlcpException;
    goto :goto_0

    .line 222
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    :cond_2
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EchoServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    if-eqz v0, :cond_6

    .line 227
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "EchoServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 229
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "EchoServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-direct {p0, v0}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 231
    :catch_1
    move-exception v6

    .line 232
    .restart local v6    # "e":Lcom/android/nfc/LlcpException;
    const-string v0, "EchoServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    iput-boolean v7, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    goto :goto_1

    .line 234
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    :catch_2
    move-exception v6

    .line 235
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "EchoServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iput-boolean v7, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    goto :goto_1

    .line 240
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 243
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 247
    :goto_2
    iput-object v8, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 250
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    :goto_3
    iput-object v8, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    goto :goto_0

    .line 251
    :catch_3
    move-exception v0

    goto :goto_3

    .line 244
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 271
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 279
    :cond_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v1, :cond_0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 262
    const-string v1, "EchoServer"

    const-string v2, "Send success!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EchoServer"

    const-string v2, "Send failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
