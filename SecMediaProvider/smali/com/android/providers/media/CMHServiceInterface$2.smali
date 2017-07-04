.class final Lcom/android/providers/media/CMHServiceInterface$2;
.super Ljava/lang/Object;
.source "CMHServiceInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/CMHServiceInterface;->scheduleUnbind(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/providers/media/CMHServiceInterface$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    :try_start_0
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unbinding from CMH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/providers/media/CMHServiceInterface$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$200()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
