.class public Lcom/sec/knox/container/util/DaemonConnectorException;
.super Ljava/lang/Exception;
.source "DaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mEvent:Lcom/sec/knox/container/util/DaemonEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' failed with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnectorException;->mCmd:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnectorException;->mEvent:Lcom/sec/knox/container/util/DaemonEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnectorException;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnectorException;->mEvent:Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    return v0
.end method

.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sec/knox/container/util/DaemonConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
