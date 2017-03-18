.class Lcom/sec/sdp/internal/SDPLog$CallerInfo;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/internal/SDPLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallerInfo"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private currMethod:Ljava/lang/String;

.field private pid:I

.field private prevMethod:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private uid:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    # invokes: Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->access$000()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->time:Ljava/lang/String;

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iput v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->userId:I

    .line 147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->pid:I

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->uid:I

    .line 149
    const-string v3, "N/A"

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    .line 150
    const-string v3, "N/A"

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    .line 151
    const-string v3, "N/A"

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 155
    .local v2, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x4

    :try_start_0
    aget-object v0, v2, v3

    .line 156
    .local v0, "eCurr":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    .line 159
    const/4 v3, 0x5

    aget-object v1, v2, v3

    .line 160
    .local v1, "ePrev":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "eCurr":Ljava/lang/StackTraceElement;
    .end local v1    # "ePrev":Ljava/lang/StackTraceElement;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",I,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "UserId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "currMethod"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->currMethod:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "prevMethod"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->prevMethod:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Class"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    # invokes: Lcom/sec/sdp/internal/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->access$100([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
