.class final Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    .line 214
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 215
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 221
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$000(Lcom/android/server/cover/NfcLedCoverController;)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$200(Lcom/android/server/cover/NfcLedCoverController;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$300(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 231
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/16 v2, 0x12

    const/4 v3, 0x0

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    goto :goto_1

    .line 239
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 241
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v2, v3, v1}, Lcom/android/server/cover/NfcLedCoverController;->access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$800(Lcom/android/server/cover/NfcLedCoverController;I)V

    goto/16 :goto_0

    .line 257
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$900(Lcom/android/server/cover/NfcLedCoverController;II)V

    goto/16 :goto_0

    .line 260
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1000(Lcom/android/server/cover/NfcLedCoverController;I)V

    .line 262
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 268
    :catch_2
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/server/cover/NfcLedCoverController;->access$1100(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 276
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/server/cover/NfcLedCoverController;->access$1200(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
