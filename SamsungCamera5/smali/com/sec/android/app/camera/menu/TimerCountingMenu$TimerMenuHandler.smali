.class Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;
.super Landroid/os/Handler;
.source "TimerCountingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/TimerCountingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerMenuHandler"
.end annotation


# instance fields
.field private final mTimerMenu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/menu/TimerCountingMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V
    .locals 1
    .param p1, "timerMenu"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;->mTimerMenu:Ljava/lang/ref/WeakReference;

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;->mTimerMenu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 377
    .local v1, "timerMenu":Lcom/sec/android/app/camera/menu/TimerCountingMenu;
    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 381
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    .local v0, "currentAnimationTime":I
    # getter for: Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$200(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)I

    move-result v2

    if-le v2, v0, :cond_1

    .line 385
    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$202(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I

    goto :goto_0

    .line 388
    :cond_1
    # invokes: Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$400(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
