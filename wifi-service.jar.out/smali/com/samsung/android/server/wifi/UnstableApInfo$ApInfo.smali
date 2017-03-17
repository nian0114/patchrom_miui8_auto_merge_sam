.class Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/UnstableApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApInfo"
.end annotation


# instance fields
.field public counter:I

.field public isMobileHotspot:Z

.field public level:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/UnstableApInfo;

.field public time:J


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/UnstableApInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->this$0:Lcom/samsung/android/server/wifi/UnstableApInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    iput v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    return-void
.end method
