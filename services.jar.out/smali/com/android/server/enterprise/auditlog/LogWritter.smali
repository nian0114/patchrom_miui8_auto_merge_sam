.class public Lcom/android/server/enterprise/auditlog/LogWritter;
.super Ljava/lang/Object;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;,
        Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;
    }
.end annotation


# instance fields
.field private mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/LogWritter;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/LogWritter;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-object v0
.end method


# virtual methods
.method createBubbleDirectory()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    return-void
.end method

.method createBubbleFile()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    return-void
.end method

.method deleteAllFiles()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteAllFiles()V

    return-void
.end method

.method getBufferLogSize()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getCriticalLogSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpFilesList()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getMaximumLogSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method setBootCompleted(Z)V
    .locals 1
    .param p1, "boot"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBootCompleted(Z)V

    return-void
.end method

.method setBufferLogSize(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBufferLogSize(J)V

    return-void
.end method

.method setCriticalLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setCriticalLogSize(I)V

    return-void
.end method

.method setIsDumping(ZZ)V
    .locals 1
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setIsDumping(ZZ)V

    return-void
.end method

.method setLastTimestamp()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "dumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setLastTimestamp(Ljava/util/ArrayList;)V

    return-void
.end method

.method setMaximumLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setMaximumLogSize(I)V

    return-void
.end method

.method setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/server/enterprise/auditlog/IObserver;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-void
.end method

.method setTypeOfDump(Z)V
    .locals 1
    .param p1, "isFull"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setTypeOfDump(Z)V

    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->removeCallbacks()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    return-void
.end method

.method swapFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "swap"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "log"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
