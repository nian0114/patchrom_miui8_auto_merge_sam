.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1800(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {v4, p1}, Landroid/preference/SeekBarVolumizer;->access$1900(Landroid/preference/SeekBarVolumizer;I)Z

    move-result v1

    .local v1, "streamMatch":Z
    :goto_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$300(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_4

    :cond_0
    move v0, v2

    .local v0, "muted":Z
    :goto_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->access$2000(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .end local v0    # "muted":Z
    :cond_1
    return-void

    .end local v1    # "streamMatch":Z
    :cond_2
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    if-ne p1, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    .restart local v1    # "streamMatch":Z
    :cond_4
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "streamType":I
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    # setter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->access$1202(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_0

    :cond_2
    const-string v4, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    # getter for: Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z
    invoke-static {}, Landroid/preference/SeekBarVolumizer;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .local v1, "currentSimSlot":I
    if-ne v1, v6, :cond_3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    # setter for: Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->access$1502(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    # setter for: Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->access$1502(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    .end local v1    # "currentSimSlot":I
    .end local v3    # "subId":I
    :cond_4
    const-string v4, "com.android.systemui.action.dnd_off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v4}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v4}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    goto :goto_0

    :cond_5
    const-string v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1700(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v5

    # setter for: Landroid/preference/SeekBarVolumizer;->mZenMode:I
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->access$1602(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.dnd_off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
