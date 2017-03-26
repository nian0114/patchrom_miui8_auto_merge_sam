.class final Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChangedTableDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3561
    iput-object p1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 3564
    iget-object v2, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3565
    :try_start_0
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v3, "Restore routing table."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTempProto:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/nfc/NfcService;->access$3202(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 3568
    iget-object v1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTempTech:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/nfc/NfcService;->access$3302(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 3569
    iget-object v1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTempServices:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/android/nfc/NfcService;->access$3402(Lcom/android/nfc/NfcService;Ljava/util/List;)Ljava/util/List;

    .line 3571
    iget-object v1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3572
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x190

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3573
    iget-object v1, p0, Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3574
    monitor-exit v2

    .line 3575
    return-void

    .line 3574
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
