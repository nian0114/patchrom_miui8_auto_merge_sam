.class public final Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
.super Ljava/lang/Object;
.source "SecNdefService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/secSend/SecNdefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecSnepInfo"
.end annotation


# instance fields
.field private transient mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field private mId:[B

.field private mPkgName:Ljava/lang/String;

.field private mServerSap:I

.field private mServiceName:Ljava/lang/String;

.field private transient mSnepServer:Lcom/android/nfc/snep/SnepServer;

.field private mType:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[B[BLcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serverSap"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # [B
    .param p5, "id"    # [B
    .param p6, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    .line 461
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mPkgName:Ljava/lang/String;

    .line 462
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mType:[B

    .line 463
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mId:[B

    .line 465
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 466
    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 484
    iput-object p1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    .line 485
    iput p2, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    .line 486
    iput-object p3, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mPkgName:Ljava/lang/String;

    .line 487
    iput-object p4, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mType:[B

    .line 488
    iput-object p5, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mId:[B

    .line 489
    iput-object p6, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 490
    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->stopServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->startServer()Z

    move-result v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    .line 478
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mPkgName:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mType:[B

    .line 480
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mId:[B

    .line 481
    return-void
.end method

.method private startServer()Z
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 543
    :cond_0
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SecNdefService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startServer() : SAP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stopServer()Z
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    .line 550
    :cond_0
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SecNdefService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopServer() : SAP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 552
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 470
    iget v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 471
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mType:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mId:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 474
    return-void
.end method


# virtual methods
.method public createSnepServer()Z
    .locals 5

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 530
    :cond_0
    const/4 v1, 0x0

    .line 537
    :goto_0
    return v1

    .line 533
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/nfc/snep/SnepServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "urn:nfc:xsn:samsung.com:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    iget-object v4, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/nfc/snep/SnepServer;-><init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mSnepServer:Lcom/android/nfc/snep/SnepServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SecNdefService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnepServer Creation Error : msg["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    if-ne p0, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    instance-of v3, p1, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 512
    check-cast v0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 514
    .local v0, "comp":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v1, v2

    .line 515
    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 518
    goto :goto_0

    .line 520
    :cond_3
    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getType()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getType()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getId()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getId()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "comp":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_4
    move v1, v2

    .line 525
    goto :goto_0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mId:[B

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSap()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServerSap:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()[B
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->mType:[B

    return-object v0
.end method
