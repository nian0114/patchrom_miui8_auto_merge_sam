.class public Lcom/sec/android/app/TraceWrapper;
.super Ljava/lang/Object;
.source "TraceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/TraceWrapper$1;,
        Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;,
        Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;,
        Lcom/sec/android/app/TraceWrapper$TraceHelperBase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    const-class v0, Lcom/sec/android/app/TraceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/TraceWrapper;->TAG:Ljava/lang/String;

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;

    invoke-direct {v0, v2}, Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;-><init>(Lcom/sec/android/app/TraceWrapper$1;)V

    sput-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "No proper trace helper implementation. Using dummy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;

    invoke-direct {v0, v2}, Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;-><init>(Lcom/sec/android/app/TraceWrapper$1;)V

    sput-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;I)V
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .prologue
    .line 121
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceBegin(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 1
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "counterValue"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceCounter(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public static traceEnd()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceEnd()V

    .line 96
    return-void
.end method
