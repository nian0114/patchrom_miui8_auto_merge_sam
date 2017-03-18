.class final Lcom/android/server/telecom/secutils/TelecomUtilsAudio$6;
.super Ljava/lang/Object;
.source "TelecomUtilsAudio.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/TelecomUtilsAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5

    .prologue
    .line 648
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 649
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 651
    :pswitch_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    .line 657
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getDevicePositionContext()Landroid/hardware/scontext/SContextDevicePosition;

    move-result-object v1

    .line 658
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 659
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextDevicePosition;->getPosition()I

    move-result v1

    .line 660
    const-string v2, "TelecomUtilsAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSContextChanged : SContextDevicePosition.getPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 670
    :pswitch_1
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$100()Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    move-result-object v1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    if-eq v1, v2, :cond_0

    .line 671
    const-string v1, "phoneflat=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$102(Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    goto :goto_0

    .line 664
    :pswitch_2
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$100()Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    move-result-object v1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    if-eq v1, v2, :cond_0

    .line 665
    const-string v1, "phoneflat=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$102(Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    goto :goto_0

    .line 676
    :pswitch_3
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$100()Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    move-result-object v1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    if-eq v1, v2, :cond_0

    .line 677
    const-string v1, "phoneflat=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$102(Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    goto :goto_0

    .line 682
    :pswitch_4
    # getter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$100()Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    move-result-object v1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    if-eq v1, v2, :cond_0

    .line 683
    const-string v1, "phoneflat=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 684
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$102(Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    goto/16 :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    .line 662
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
