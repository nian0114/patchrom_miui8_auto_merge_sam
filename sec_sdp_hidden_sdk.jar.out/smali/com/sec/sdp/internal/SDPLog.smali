.class public Lcom/sec/sdp/internal/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/internal/SDPLog$CallerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = ",D,"

.field private static final DEBUG_ON:Z = false

.field private static final INFO:Ljava/lang/String; = ",I,"

.field private static final PARAM:Ljava/lang/String; = ",P,"

.field private static final SUFFIX:Ljava/lang/String; = ".SDPLog"

.field private static final TAG:Ljava/lang/String; = "SDPLog"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final TOKEN:Ljava/lang/String; = ","

.field private static isInitialized:Z

.field private static mSdpLogService:Lcom/sec/sdp/ISdpLogService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    .line 35
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Lcom/sec/sdp/ISdpLogService;

    .line 40
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Lcom/sec/sdp/ISdpLogService;

    if-nez v1, :cond_1

    .line 41
    const-string v1, "sdp_log"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/ISdpLogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpLogService;

    move-result-object v1

    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Lcom/sec/sdp/ISdpLogService;

    .line 43
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Lcom/sec/sdp/ISdpLogService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    .line 45
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/sec/sdp/internal/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 115
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "timeFormat":Ljava/text/Format;
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 58
    const-string v1, "SDPLog.d"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "payload":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SDPLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private static enqPayload(Ljava/lang/String;)V
    .locals 3
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Lcom/sec/sdp/ISdpLogService;

    invoke-interface {v1, p0}, Lcom/sec/sdp/ISdpLogService;->enqPayload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDPLog"

    const-string v2, "Failed to talk with sdp log service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "systemTime":J
    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 79
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    ##if-eqz v1, :cond_0
    goto :goto_0

    .line 80
    new-instance v1, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "payload":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    .line 96
    .end local v0    # "payload":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static varargs makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 120
    const/4 v6, 0x1

    .line 121
    .local v6, "toggle":Z
    const-string v4, ""

    .line 122
    .local v4, "sequence":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 123
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_0

    const-string v5, "null"

    .line 124
    .local v5, "str":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    .line 125
    if-nez v6, :cond_1

    move v6, v7

    .line 126
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 125
    goto :goto_2

    .line 128
    :cond_2
    if-nez v6, :cond_3

    move v6, v7

    .line 129
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move v6, v8

    .line 128
    goto :goto_4

    .line 132
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "str":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .locals 0
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 76
    return-void
.end method
