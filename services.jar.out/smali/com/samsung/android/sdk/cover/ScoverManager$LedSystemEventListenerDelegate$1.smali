.class Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->access$400(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1424
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1426
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1427
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->access$400(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
