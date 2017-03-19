.class final Lcom/android/providers/media/CMHServiceInterface$1;
.super Ljava/lang/Object;
.source "CMHServiceInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/CMHServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 99
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMHService connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 105
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMHService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    # getter for: Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/providers/media/CMHServiceInterface;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    return-void
.end method
