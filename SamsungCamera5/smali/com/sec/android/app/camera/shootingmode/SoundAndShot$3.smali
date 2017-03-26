.class Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;
.super Landroid/os/Handler;
.source "SoundAndShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    # setter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1502(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;I)I

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1700(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    :cond_0
    return-void
.end method
