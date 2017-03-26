.class Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;
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
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    :pswitch_0
    return-void

    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 172
    .local v0, "mRecordingAmpitude":[I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicatorlevel([I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;[I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    goto :goto_0

    .line 175
    .end local v0    # "mRecordingAmpitude":[I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 176
    .restart local v0    # "mRecordingAmpitude":[I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecoringAmplitude([I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;[I)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    goto :goto_0

    .line 182
    .end local v0    # "mRecordingAmpitude":[I
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$802(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)Z

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$602(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;I)I

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$800(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z

    move-result v3

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(IZ)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$900(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;IZ)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # operator++ for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$608(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$1000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
