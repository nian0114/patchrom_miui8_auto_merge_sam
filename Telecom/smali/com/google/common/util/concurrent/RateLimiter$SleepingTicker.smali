.class abstract Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
.super Lcom/google/common/base/Ticker;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SleepingTicker"
.end annotation


# static fields
.field static final SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method
