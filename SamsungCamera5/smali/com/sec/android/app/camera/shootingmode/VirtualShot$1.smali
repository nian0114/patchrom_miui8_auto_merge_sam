.class Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;
.super Landroid/os/Handler;
.source "VirtualShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;IZ)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideVirtualShotGuideDeviceAnimation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
