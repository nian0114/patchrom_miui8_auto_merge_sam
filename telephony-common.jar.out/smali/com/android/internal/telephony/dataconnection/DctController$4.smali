.class Lcom/android/internal/telephony/dataconnection/DctController$4;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 279
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$802(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v3, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const-string v3, "REASON"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 283
    .local v1, "simReason":Z
    const-string v3, "SIMSLOT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, "simSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCOMHOTSWAP received, reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 285
    if-eqz v1, :cond_2

    .line 286
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubInfoReady:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->access$802(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    goto :goto_0

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$4;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    goto :goto_0
.end method
