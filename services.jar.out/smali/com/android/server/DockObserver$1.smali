.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 430
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    iget-object v1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v1}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v1

    # invokes: Lcom/android/server/DockObserver;->isOtherState(I)Z
    invoke-static {v0, v1}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mReportedDockState:I
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    iget-object v1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mReportedDockState:I
    invoke-static {v1}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v1

    # invokes: Lcom/android/server/DockObserver;->isOtherState(I)Z
    invoke-static {v0, v1}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # invokes: Lcom/android/server/DockObserver;->handleOtherStateChange()V
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # invokes: Lcom/android/server/DockObserver;->handleDockStateChange()V
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)V

    goto :goto_1

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
