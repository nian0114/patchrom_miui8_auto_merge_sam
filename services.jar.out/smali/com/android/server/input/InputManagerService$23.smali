.class Lcom/android/server/input/InputManagerService$23;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 3912
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 8
    .param p1, "scontextEvent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3915
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 3916
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getFlipMotionContext()Landroid/hardware/scontext/SContextFlipMotion;

    move-result-object v0

    .line 3917
    .local v0, "flipMotion":Landroid/hardware/scontext/SContextFlipMotion;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextFlipMotion;->getStatus()I

    move-result v2

    .line 3918
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mLastFlipMotionState:I
    invoke-static {v3, v2}, Lcom/android/server/input/InputManagerService;->access$3602(Lcom/android/server/input/InputManagerService;I)I

    .line 3919
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$3000(Lcom/android/server/input/InputManagerService;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3922
    packed-switch v2, :pswitch_data_0

    .line 3940
    const-string v3, "InputManager"

    const-string/jumbo v4, "flip motion status : FLIP_MOTION_STATUS_UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$3500(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWrapAroundModeChanged(I)V

    .line 3945
    return-void

    .line 3924
    :pswitch_0
    const-string v3, "InputManager"

    const-string/jumbo v4, "flip motion status : FLIP_MOTION_STATUS_FRONT"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDropForMillisecond(ZZZI)V
    invoke-static {v3, v6, v5, v5, v7}, Lcom/android/server/input/InputManagerService;->access$3400(Lcom/android/server/input/InputManagerService;ZZZI)V

    goto :goto_0

    .line 3928
    :pswitch_1
    const-string v3, "InputManager"

    const-string/jumbo v4, "flip motion status : FLIP_MOTION_STATUS_BACK"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDropForMillisecond(ZZZI)V
    invoke-static {v3, v5, v6, v5, v7}, Lcom/android/server/input/InputManagerService;->access$3400(Lcom/android/server/input/InputManagerService;ZZZI)V

    goto :goto_0

    .line 3932
    :pswitch_2
    const-string v3, "InputManager"

    const-string/jumbo v4, "flip motion status : FLIP_MOTION_STATUS_START"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDrop(ZZZ)V
    invoke-static {v3, v5, v5, v5}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;ZZZ)V

    goto :goto_0

    .line 3936
    :pswitch_3
    const-string v3, "InputManager"

    const-string/jumbo v4, "flip motion status : FLIP_MOTION_STATUS_RESET"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$23;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDrop(ZZZ)V
    invoke-static {v3, v6, v6, v6}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;ZZZ)V

    goto :goto_0

    .line 3922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
