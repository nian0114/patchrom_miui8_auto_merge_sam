.class Lcom/android/server/FMRadioService$14;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .locals 4
    .param p1, "motionEvent"    # Lcom/samsung/android/motion/MREvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v0

    .local v0, "motion":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsMute:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$3300(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_1
    const-string v1, "FLIP_TOP_TO_BOTTOM : mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
