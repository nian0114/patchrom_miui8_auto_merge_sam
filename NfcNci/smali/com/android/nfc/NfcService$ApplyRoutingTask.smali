.class Lcom/android/nfc/NfcService$ApplyRoutingTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyRoutingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 1

    .prologue
    .line 5645
    iput-object p1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 5645
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)V
    .locals 1
    .param p2, "cb"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .prologue
    .line 5646
    iput-object p1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 5647
    iput-object p2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 5648
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5642
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5653
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 5655
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    if-eqz v0, :cond_0

    .line 5657
    monitor-exit v1

    .line 5675
    :goto_0
    return-object v3

    .line 5660
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eq v0, v2, :cond_3

    .line 5662
    :cond_1
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcService"

    const-string v2, "applyRouting #11"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 5664
    monitor-exit v1

    goto :goto_0

    .line 5676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5666
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 5668
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5670
    :try_start_2
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NfcService"

    const-string v2, "applyRouting #12"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5673
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5675
    monitor-exit v1

    goto :goto_0

    .line 5673
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5642
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 5681
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    if-eqz v1, :cond_0

    .line 5684
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    const/16 v2, 0x100

    invoke-interface {v1, v2}, Lcom/gsma/services/nfc/INfcControllerCallbacks;->onCardEmulationMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5692
    :cond_0
    :goto_0
    return-void

    .line 5685
    :catch_0
    move-exception v0

    .line 5686
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    .line 5687
    const-string v1, "NfcService"

    const-string v2, "Parent of onCardEmulationMode is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5689
    :cond_1
    const-string v1, "NfcService"

    const-string v2, "Can\'t execute onCardEmulationMode callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
