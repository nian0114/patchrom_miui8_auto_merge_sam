.class Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;->val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->access$400(Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->access$400(Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
