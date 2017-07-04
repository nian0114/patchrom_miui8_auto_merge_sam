.class Lcom/google/common/util/concurrent/RateLimiter$Bursty;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    iput-wide p2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxBurstSeconds:D

    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxBurstSeconds:D

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method
