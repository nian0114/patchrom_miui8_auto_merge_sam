.class Lcom/android/server/pm/PackageManagerService$36;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 0

    .prologue
    .line 24035
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$36;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$36;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$36;->val$startFreeBytes:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$36;->val$measurePath:Ljava/io/File;

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$36;->val$sizeBytes:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$36;->val$moveId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x50

    const-wide/16 v2, 0x0

    .line 24040
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$36;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v10, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 24057
    return-void

    .line 24043
    :catch_0
    move-exception v0

    .line 24046
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$36;->val$startFreeBytes:J

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$36;->val$measurePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v10

    sub-long v6, v0, v10

    .line 24048
    .local v6, "deltaFreeBytes":J
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$36;->val$sizeBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 24049
    mul-long v0, v6, v4

    iget-wide v10, p0, Lcom/android/server/pm/PackageManagerService$36;->val$sizeBytes:J

    div-long/2addr v0, v10

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v8, v0, 0xa

    .line 24055
    .local v8, "progress":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$36;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$36;->val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v0, v1, v8}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    .line 24053
    .end local v8    # "progress":I
    :cond_1
    const/16 v8, 0x64

    .restart local v8    # "progress":I
    goto :goto_1
.end method
