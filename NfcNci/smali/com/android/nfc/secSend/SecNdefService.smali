.class public Lcom/android/nfc/secSend/SecNdefService;
.super Ljava/lang/Object;
.source "SecNdefService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;,
        Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;
    }
.end annotation


# static fields
.field static final DBG:Z

.field public static final FILE:Ljava/lang/String; = "SecNdefService.bin"

.field private static final SEC_DISCOVERED:Ljava/lang/String; = "android.nfc.action.SEC_DISCOVERED"

.field private static final SEC_NFCEVENT_INRANGE:Ljava/lang/String; = "android.nfc.action.P2P_INRANGE"

.field private static final SEC_NFCEVENT_OUTOFRANGE:Ljava/lang/String; = "android.nfc.action.P2P_OUTOFRANGE"

.field private static final SEC_SEND_COMPLETE:Ljava/lang/String; = "android.nfc.action.SEC_SENDCOMPLETE"

.field static final SEC_SNEP_BASE:Ljava/lang/String; = "urn:nfc:xsn:samsung.com:"

.field private static final SEC_SNEP_SAP_CAPACITY:I = 0x2

.field private static final SEC_SNEP_SAP_END:I = 0x17

.field private static final SEC_SNEP_SAP_START:I = 0x15

.field private static final SEC_UNSUPPORTED:Ljava/lang/String; = "android.nfc.action.SEC_UNSUPPORTED"

.field private static final TAG:Ljava/lang/String; = "SecNdefService"

.field static final mSecSnepTransmissionLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsReceiveEnabled:Z

.field private mIsSendEnabled:Z

.field private final mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;",
            ">;"
        }
    .end annotation
.end field

.field mSecSendRunnable:Ljava/lang/Runnable;

.field private mSecSnepInfoArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSendThread:Ljava/lang/Thread;

.field final secSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepTransmissionLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendEnable"    # Z
    .param p3, "receiveEnable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    iput-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSendThread:Ljava/lang/Thread;

    .line 76
    iput-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    .line 78
    iput-boolean v2, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    .line 95
    new-instance v0, Lcom/android/nfc/secSend/SecNdefService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/secSend/SecNdefService$1;-><init>(Lcom/android/nfc/secSend/SecNdefService;)V

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSendRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/nfc/secSend/SecNdefService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/secSend/SecNdefService$2;-><init>(Lcom/android/nfc/secSend/SecNdefService;)V

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->secSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 173
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecNdefService"

    const-string v1, "SecNdefService Created!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0, p2, p3}, Lcom/android/nfc/secSend/SecNdefService;->enableDisable(ZZ)V

    .line 176
    iput-boolean p2, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    .line 177
    iput-boolean p3, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService;->loadSnepInfo()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/secSend/SecNdefService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/secSend/SecNdefService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/secSend/SecNdefService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/nfc/secSend/SecNdefService;->sendSecUnsupported(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/secSend/SecNdefService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/secSend/SecNdefService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/nfc/secSend/SecNdefService;->sendSecSendComplete(Ljava/lang/String;)V

    return-void
.end method

.method private addSecSnepInfo(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z
    .locals 5
    .param p1, "si"    # Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .prologue
    const/4 v4, 0x1

    .line 378
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 381
    .local v0, "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0, p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    sget-boolean v1, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecNdefService"

    const-string v2, "The requested SNEPInfo is already existing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_0
    :goto_0
    return v4

    .line 389
    .restart local v0    # "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_1
    # invokes: Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->stopServer()Z
    invoke-static {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->access$400(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v0    # "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_2
    monitor-enter p0

    .line 398
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-boolean v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->createSnepServer()Z

    .line 401
    # invokes: Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->startServer()Z
    invoke-static {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->access$500(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    .line 403
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    sget-boolean v1, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SecNdefService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSecNdefService() : returned value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService;->saveSnepInfo()V

    goto :goto_0

    .line 392
    .restart local v0    # "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 403
    .end local v0    # "existing":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private sendSecNFCEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private sendSecSendComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.SEC_SENDCOMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private sendSecUnsupported(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.SEC_UNSUPPORTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method


# virtual methods
.method public closeSecNdefService(I)Z
    .locals 3
    .param p1, "SAP"    # I

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecNdefService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSecNdefService() : SAP["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 426
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serverSap"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "type"    # [B
    .param p5, "id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    sget-boolean v1, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecNdefService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSecNdefService() : serviceName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverSAP["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PackageName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    if-nez p1, :cond_1

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service Name is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    if-nez p3, :cond_2

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Package Name is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_2
    const/16 v1, 0x15

    if-gt v1, p2, :cond_3

    const/16 v1, 0x17

    if-ge v1, p2, :cond_4

    .line 367
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "The range of Server SAP should be from 21 to 23."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_4
    new-instance v0, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    iget-object v6, p0, Lcom/android/nfc/secSend/SecNdefService;->secSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[B[BLcom/android/nfc/snep/SnepServer$Callback;)V

    .line 371
    .local v0, "si":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-direct {p0, v0}, Lcom/android/nfc/secSend/SecNdefService;->addSecSnepInfo(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 372
    invoke-virtual {v0}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v1

    .line 374
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableDisable(ZZ)V
    .locals 3
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecNdefService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDisable(sendEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",receiveEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService;->startSecNdefService()V

    .line 159
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 161
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "SecNdefService"

    const-string v1, "Create SendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    .line 168
    iput-boolean p2, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 155
    :cond_3
    iget-boolean v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/nfc/secSend/SecNdefService;->stopSecNdefService()V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 162
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 164
    sget-boolean v0, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "SecNdefService"

    const-string v1, "Stop SendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public loadSnepInfo()V
    .locals 14

    .prologue
    .line 214
    const/4 v8, 0x0

    .line 216
    .local v8, "arrSnep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    const/4 v9, 0x0

    .line 217
    .local v9, "fStream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 219
    .local v11, "iStream":Ljava/io/ObjectInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    const-string v3, "SecNdefService.bin"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    .line 220
    new-instance v12, Ljava/io/ObjectInputStream;

    invoke-direct {v12, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v11    # "iStream":Ljava/io/ObjectInputStream;
    .local v12, "iStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 222
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    if-eqz v12, :cond_0

    .line 227
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v11, v12

    .line 231
    .end local v12    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v11    # "iStream":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_0
    if-eqz v8, :cond_4

    .line 232
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 234
    .local v13, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    sget-boolean v2, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SecNdefService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded SNEP Information : ServiceName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ServiceSap["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PkgName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Type["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getType()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getId()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    new-instance v1, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getServerSap()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getType()[B

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getId()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/secSend/SecNdefService;->secSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct/range {v1 .. v7}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[B[BLcom/android/nfc/snep/SnepServer$Callback;)V

    .line 243
    .local v1, "si":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-direct {p0, v1}, Lcom/android/nfc/secSend/SecNdefService;->addSecSnepInfo(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    goto/16 :goto_1

    .line 228
    .end local v1    # "si":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "iStream":Ljava/io/ObjectInputStream;
    .end local v13    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    .restart local v12    # "iStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    move-object v11, v12

    .line 229
    .end local v12    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v11    # "iStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v2

    .line 226
    :goto_2
    if-eqz v11, :cond_1

    .line 227
    :try_start_3
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 228
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 225
    :catchall_0
    move-exception v2

    .line 226
    :goto_3
    if-eqz v11, :cond_3

    .line 227
    :try_start_4
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 228
    :cond_3
    :goto_4
    throw v2

    :catch_3
    move-exception v3

    goto :goto_4

    .line 246
    :cond_4
    return-void

    .line 225
    .end local v11    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v12    # "iStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v11    # "iStream":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 223
    .end local v11    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v12    # "iStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    move-object v11, v12

    .end local v12    # "iStream":Ljava/io/ObjectInputStream;
    .restart local v11    # "iStream":Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public onP2pInRange()V
    .locals 5

    .prologue
    .line 266
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SecNdefService"

    const-string v4, "onP2pInRange()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 268
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 273
    .local v2, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v2}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.nfc.action.P2P_INRANGE"

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/secSend/SecNdefService;->sendSecNFCEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v2    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_1
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SecNdefService"

    const-string v4, "mSendThread start!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSendRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSendThread:Ljava/lang/Thread;

    .line 277
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 5

    .prologue
    .line 249
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SecNdefService"

    const-string v4, "onP2pOutOfRange()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 252
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 256
    .local v2, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v2}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.nfc.action.P2P_OUTOFRANGE"

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/secSend/SecNdefService;->sendSecNFCEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v2    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSendThread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 259
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SecNdefService"

    const-string v4, "mSendThread interrupted!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSendThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 263
    return-void
.end method

.method public onRecvMessage(Landroid/nfc/NdefMessage;)V
    .locals 10
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x1

    .line 299
    sget-boolean v6, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "SecNdefService"

    const-string v7, "onRecvMessage()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 303
    .local v3, "records":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lt v6, v8, :cond_1

    .line 305
    const/4 v6, 0x0

    aget-object v4, v3, v6

    .line 307
    .local v4, "refRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    if-eq v6, v8, :cond_2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 308
    sget-boolean v6, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "SecNdefService"

    const-string v7, "Received NDEF Message is neither TNF WELL KNOW nor TNF EXTERNAL TYPE."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v4    # "refRecord":Landroid/nfc/NdefRecord;
    :cond_1
    return-void

    .line 312
    .restart local v4    # "refRecord":Landroid/nfc/NdefRecord;
    :cond_2
    array-length v6, v3

    if-le v6, v8, :cond_4

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    const-string v7, "Hr"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    const-string v7, "Hs"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    :cond_3
    aget-object v4, v3, v8

    .line 316
    :cond_4
    iget-object v6, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 317
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 319
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    sget-boolean v6, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "SecNdefService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received NDEF Message: Type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ID ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 325
    .local v5, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getType()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getId()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.nfc.action.SEC_DISCOVERED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "WPFIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v6, "NdefMessage"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    iget-object v6, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    sget-boolean v6, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "SecNdefService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event:android.nfc.action.SEC_DISCOVERED sent to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveSnepInfo()V
    .locals 11

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "fStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 186
    .local v5, "oStream":Ljava/io/ObjectOutputStream;
    sget-boolean v8, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "SecNdefService"

    const-string v9, "saveSnepInfo()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    const-string v9, "SecNdefService.bin"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 189
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v5    # "oStream":Ljava/io/ObjectOutputStream;
    .local v6, "oStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 192
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 193
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "arrSnep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 197
    .local v7, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 202
    .end local v0    # "arrSnep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .end local v7    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 203
    .end local v6    # "oStream":Ljava/io/ObjectOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "oStream":Ljava/io/ObjectOutputStream;
    :goto_1
    :try_start_2
    sget-boolean v8, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "SecNdefService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to save SNEP information. ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "],"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 199
    .end local v5    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "arrSnep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .restart local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .restart local v6    # "oStream":Ljava/io/ObjectOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 201
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v5, v6

    .line 209
    .end local v6    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oStream":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 207
    .end local v5    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 210
    .end local v6    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oStream":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 207
    .end local v0    # "arrSnep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    .local v2, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 206
    :goto_3
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 209
    :cond_5
    :goto_4
    throw v8

    .line 207
    :catch_3
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "oStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oStream":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 202
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public secSendNdefMsg(ILandroid/nfc/NdefMessage;)I
    .locals 5
    .param p1, "SAP"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    .line 411
    sget-boolean v1, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecNdefService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secSendNdefMsg() : SAP["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    monitor-enter p0

    .line 414
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mIsSendEnabled:Z

    if-nez v1, :cond_1

    .line 415
    monitor-exit p0

    .line 419
    :goto_0
    return v4

    .line 416
    :cond_1
    new-instance v0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;-><init>(ILandroid/nfc/NdefMessage;)V

    .line 417
    .local v0, "secMsg":Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;
    iget-object v1, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecNdefSendQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 418
    monitor-exit p0

    goto :goto_0

    .end local v0    # "secMsg":Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startSecNdefService()V
    .locals 6

    .prologue
    .line 431
    sget-boolean v4, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SecNdefService"

    const-string v5, "startSecNdefService()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 434
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 435
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 437
    .local v3, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    invoke-virtual {v3}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->createSnepServer()Z

    .line 438
    # invokes: Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->startServer()Z
    invoke-static {v3}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->access$500(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    goto :goto_0

    .line 441
    .end local v3    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.nfc.action.SEC_NDEF_START"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.band"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 444
    iget-object v4, p0, Lcom/android/nfc/secSend/SecNdefService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method public stopSecNdefService()V
    .locals 6

    .prologue
    .line 448
    sget-boolean v3, Lcom/android/nfc/secSend/SecNdefService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SecNdefService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopSecNdefService()size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/secSend/SecNdefService;->mSecSnepInfoArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 450
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;

    .line 454
    .local v2, "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    # invokes: Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->stopServer()Z
    invoke-static {v2}, Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;->access$400(Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;)Z

    goto :goto_0

    .line 456
    .end local v2    # "secSnep":Lcom/android/nfc/secSend/SecNdefService$SecSnepInfo;
    :cond_1
    return-void
.end method
