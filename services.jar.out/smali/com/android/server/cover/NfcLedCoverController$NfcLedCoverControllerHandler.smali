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
    .line 170
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 172
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 176
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$000(Lcom/android/server/cover/NfcLedCoverController;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 182
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$200(Lcom/android/server/cover/NfcLedCoverController;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$300(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 188
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/16 v3, 0x12

    const/4 v4, 0x0

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v2, v3, v4}, Lcom/android/server/cover/NfcLedCoverController;->access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$100(Lcom/android/server/cover/NfcLedCoverController;)V

    .line 198
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v3, v4, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$400(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    .line 200
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 206
    :catch_1
    move-exception v1

    .line 207
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 211
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$800(Lcom/android/server/cover/NfcLedCoverController;I)V

    goto/16 :goto_0

    .line 214
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/cover/NfcLedCoverController;->access$900(Lcom/android/server/cover/NfcLedCoverController;II)V

    goto/16 :goto_0

    .line 217
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V
    invoke-static {v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->access$1000(Lcom/android/server/cover/NfcLedCoverController;I)V

    .line 219
    :try_start_2
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$700(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$600(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 225
    :catch_2
    move-exception v1

    .line 226
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :pswitch_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    .line 231
    .local v0, "attach":Z
    :goto_2
    if-nez v0, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleCoverDetachedLocked()V
    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1100(Lcom/android/server/cover/NfcLedCoverController;)V

    goto/16 :goto_0

    .end local v0    # "attach":Z
    :cond_2
    move v0, v2

    .line 230
    goto :goto_2

    .line 236
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1200(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 239
    :pswitch_9
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1300(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 242
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1400(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
