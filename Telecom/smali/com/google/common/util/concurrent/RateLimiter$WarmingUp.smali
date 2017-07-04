.class Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarmingUp"
.end annotation


# instance fields
.field private halfPermits:D

.field private slope:D

.field final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    long-to-double v2, v2

    div-double/2addr v2, p3

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p3

    sub-double/2addr v2, p3

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iput-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    :goto_0
    return-void

    :cond_0
    cmpl-double v2, v0, v6

    if-nez v2, :cond_1

    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    :goto_1
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    mul-double/2addr v2, v4

    div-double v0, v2, v0

    goto :goto_1
.end method
