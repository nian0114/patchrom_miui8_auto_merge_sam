.class public Lcom/android/server/telecom/secutils/TelecomUtilsAudio;
.super Ljava/lang/Object;
.source "TelecomUtilsAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mLock:Ljava/lang/Object;

.field private static mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

.field private static mPlayingSecCallEndTone:Z

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static sIsFlatMotionListening:Z

.field private static final sSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static sSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mLock:Ljava/lang/Object;

    .line 105
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 109
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sIsFlatMotionListening:Z

    .line 115
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    .line 646
    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$6;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$6;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 90
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    .locals 0

    .prologue
    .line 90
    sput-object p0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    return-object p0
.end method

.method public static changeEPDGAudioPath(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 217
    :cond_0
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 220
    if-nez p0, :cond_2

    .line 221
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not Change ePDG audio path to ap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 228
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_3
    sget-object v0, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : changeEPDGAudioPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-static {v4, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 236
    if-eqz v0, :cond_1

    .line 238
    :try_start_0
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change ePDG audio path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-interface {v0, p0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->changeEPDGAudioPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEPDGAudioPath exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static checkAndTurnOnSpeaker()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 743
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    .line 745
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 746
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->storeSpeakerState(Z)V

    .line 747
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "checkAndTurnOnSpeaker() saved Speaker state : true"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :goto_0
    return-void

    .line 749
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    .line 750
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "checkAndTurnOnSpeaker() speaker turn on"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static convertToneGeneratorVolume(Landroid/media/ToneGenerator;I)Landroid/media/ToneGenerator;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 522
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 526
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 527
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v2

    .line 529
    if-eqz v2, :cond_5

    .line 530
    const-string v1, "situation=12;device=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v1, v0

    .line 534
    :goto_0
    const-string v3, "TelecomUtilsAudio"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSituationVolume: situation=12 volume of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_6

    const-string v0, "wired headset"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_1
    :goto_2
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "use_second_call_end_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 545
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "convertToneGeneratorVolume..."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v0, v0, -0x2

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 549
    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    .line 552
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 553
    const-string v2, "situation=15;device=0"

    .line 554
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 555
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- situationVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    invoke-virtual {p0, v0}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    :cond_4
    :goto_3
    return-object p0

    .line 532
    :cond_5
    :try_start_2
    const-string v1, "situation=12;device=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 534
    :cond_6
    const-string v0, "rcv or spk"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "convertToneGeneratorVolume: "

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 557
    :catch_1
    move-exception v0

    .line 558
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToneGeneratorVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static getAudioMode(Lcom/android/server/telecom/Call;)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x3

    .line 175
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const/4 v0, 0x4

    .line 196
    :cond_0
    :goto_0
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return v0

    .line 177
    :cond_1
    const-string v2, "psvt_audio_processing_on_ap"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWFCRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    invoke-static {}, Lcom/android/server/telecom/MovialImsRegReceiver;->isWfcRegistered()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isWfcImsCall()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 194
    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getIsVoipAudioMode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public static getAudioStream(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/16 v0, 0xb

    .line 123
    :goto_0
    const-string v2, "TelecomUtilsAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioStream : stream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getNewHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 130
    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$1;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$1;-><init>()V

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getVTSpeakerState(Lcom/android/server/telecom/Call;)I
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getVTSpeakerState()I

    move-result v0

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 566
    if-nez p0, :cond_0

    move-object v0, v2

    .line 607
    :goto_0
    return-object v0

    .line 568
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 569
    const-string v0, "disable_waiting_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 571
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 572
    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    .line 574
    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getCWToneSignal()I

    move-result v3

    .line 576
    const-string v4, "TelecomUtilsAudio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCWToneSignal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 583
    :cond_1
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    const-string v3, "45005"

    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "45006"

    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    .line 591
    :cond_3
    if-eqz v0, :cond_4

    .line 592
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "getWaitingTonePlayer: play waiting tone"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p0, v8}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    goto/16 :goto_0

    .line 595
    :cond_4
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "getWaitingTonePlayer: return null"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 596
    goto/16 :goto_0

    .line 598
    :cond_5
    const-string v0, "45008"

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 600
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    goto/16 :goto_0

    .line 603
    :cond_6
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    invoke-virtual {p0, v8}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    goto/16 :goto_0

    .line 607
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static initializeVTSpeakerState(Lcom/android/server/telecom/Call;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 838
    const-string v0, "concept_chn_common"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    if-eqz p0, :cond_0

    .line 843
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->getVTSpeakerState(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 845
    const-string v0, "tc_initial_speaker_settings"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 846
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "videocall_speaker"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    .line 852
    :cond_2
    :goto_2
    const-string v0, "TelecomUtilsAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSpeakerState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->getVTSpeakerState(Lcom/android/server/telecom/Call;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 847
    goto :goto_1

    .line 849
    :cond_4
    invoke-static {p0, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    goto :goto_2
.end method

.method public static isPlayingWaitingToneByNetwork()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 624
    const-string v0, "disable_waiting_tone_by_network"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "change_network_mode_with_ctc_card_for_six_mode"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 630
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 631
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    move v0, v1

    move v1, v4

    :goto_1
    move v3, v1

    move v1, v0

    .line 637
    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_4

    move v0, v4

    move v1, v3

    .line 634
    goto :goto_1

    .line 638
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 640
    :goto_2
    const-string v0, "TelecomUtilsAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlayingWaitingToneByNetwork : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    return v4

    :cond_3
    move v4, v2

    .line 638
    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2
.end method

.method public static needPlaySecCallEndTone(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 304
    const-string v2, "call_end_tone"

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_end_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 306
    if-ge v2, v1, :cond_1

    .line 308
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "call disconnect tone is unchecked"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isAutoAnswered"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 316
    if-ne v2, v1, :cond_2

    .line 317
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "Auto answer is true, do not play end tone"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSBarring()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 328
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "- BT Audio on: do not play end tone"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 337
    goto :goto_0
.end method

.method public static playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 349
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->needPlaySecCallEndTone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return v0

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 363
    :cond_1
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    .line 364
    sget-object v2, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    const-string v3, "TelecomUtils : playCallEndTone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const v2, 0x7f060001

    new-instance v3, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$2;

    invoke-direct {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$2;-><init>()V

    new-instance v4, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$3;

    invoke-direct {v4}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$3;-><init>()V

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;

    move v0, v1

    .line 384
    goto :goto_0
.end method

.method public static playDisconnectToneAboutRingingCall(Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/telecom/DisconnectCause;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    const-string v0, "use_second_call_end_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    const-string v0, "disable_waiting_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_5

    .line 489
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_5

    .line 491
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getCWToneSignal()I

    move-result v0

    .line 492
    const-string v3, "TelecomUtilsAudio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playDisconnectToneAboutRingingCall: getCWToneSignal("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 498
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 499
    const-string v4, "TelecomUtilsAudio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playDisconnectToneAboutRingingCall: isPSVoiceCall => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 504
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 505
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "playDisconnectToneAboutRingingCall..."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 508
    :cond_1
    const-string v0, "45008"

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "- TONE_SECOND_CALL_END_KT"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    .line 519
    :cond_2
    :goto_2
    return-void

    .line 512
    :cond_3
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "- TONE_SECOND_CALL_END"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 389
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 392
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 395
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 396
    if-nez v7, :cond_0

    .line 465
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v0, v6

    .line 479
    :goto_1
    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_0
    :try_start_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 400
    if-nez p3, :cond_4

    .line 401
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 407
    :cond_1
    :goto_2
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 409
    const-string v1, "situation=14;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 411
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 412
    const-string v1, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMediaTone->Call Connection Gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 417
    if-nez p2, :cond_3

    .line 418
    new-instance p2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$4;

    invoke-direct {p2}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$4;-><init>()V

    .line 428
    :cond_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 431
    if-nez p4, :cond_6

    .line 432
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$5;

    invoke-direct {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 445
    :goto_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 446
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 465
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v1

    .line 467
    const-string v2, "TelecomUtilsAudio"

    const-string v3, "close failed:"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 402
    :cond_4
    if-ne p3, v8, :cond_1

    .line 403
    :try_start_4
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 447
    :catch_2
    move-exception v0

    move-object v1, v7

    .line 449
    :goto_4
    :try_start_5
    const-string v2, "TelecomUtilsAudio"

    const-string v3, "create failed:"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 465
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 472
    :goto_5
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    if-ne v0, v8, :cond_5

    .line 473
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "playMediaTone exception -> force reset"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    sput-boolean v9, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    .line 476
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->resetAudioStateAfterDisconnect()V

    :cond_5
    move-object v0, v6

    .line 479
    goto/16 :goto_1

    .line 442
    :cond_6
    :try_start_7
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 451
    :catch_3
    move-exception v0

    .line 453
    :goto_6
    :try_start_8
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 465
    :try_start_9
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 466
    :catch_4
    move-exception v0

    .line 467
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 466
    :catch_5
    move-exception v0

    .line 467
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 455
    :catch_6
    move-exception v0

    move-object v7, v6

    .line 457
    :goto_7
    :try_start_a
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 465
    :try_start_b
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_5

    .line 466
    :catch_7
    move-exception v0

    .line 467
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 459
    :catch_8
    move-exception v0

    move-object v7, v6

    .line 461
    :goto_8
    :try_start_c
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 465
    :try_start_d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_5

    .line 466
    :catch_9
    move-exception v0

    .line 467
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 464
    :catchall_0
    move-exception v0

    move-object v7, v6

    .line 465
    :goto_9
    :try_start_e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 469
    :goto_a
    throw v0

    .line 466
    :catch_a
    move-exception v1

    .line 467
    const-string v2, "TelecomUtilsAudio"

    const-string v3, "close failed:"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 464
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_9

    .line 459
    :catch_b
    move-exception v0

    goto :goto_8

    .line 455
    :catch_c
    move-exception v0

    goto :goto_7

    .line 451
    :catch_d
    move-exception v0

    move-object v7, v6

    goto/16 :goto_6

    .line 447
    :catch_e
    move-exception v0

    move-object v1, v6

    goto/16 :goto_4
.end method

.method public static playingSecCallEndTone()Z
    .locals 1

    .prologue
    .line 341
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    return v0
.end method

.method public static postMessage(ILjava/lang/Object;J)V
    .locals 4

    .prologue
    .line 160
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    .line 165
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 166
    const-string v0, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message %d skipped because there is no handler. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    monitor-exit v1

    .line 171
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static restoreSpeakerStateByCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 755
    if-nez p0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 757
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "restoreSpeakerStateByCall() incoming return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 761
    :cond_1
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->initializeVTSpeakerState(Lcom/android/server/telecom/Call;)V

    .line 763
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    .line 765
    if-ne v1, v4, :cond_3

    .line 766
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->wasVTSpeakerOn(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 767
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    .line 768
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "restoreSpeakerStateByCall() turn on speaker"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 770
    :cond_2
    const-string v0, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSpeakerStateByCall() do nothing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 772
    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_5

    .line 773
    :cond_4
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->wasVTSpeakerOn(Lcom/android/server/telecom/Call;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->storeSpeakerState(Z)V

    .line 774
    const-string v0, "TelecomUtilsAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSpeakerStateByCall() saved Speaker state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->wasVTSpeakerOn(Lcom/android/server/telecom/Call;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 776
    :cond_5
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->wasVTSpeakerOn(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 777
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    .line 778
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "restoreSpeakerStateByCall() speaker turn off"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 780
    :cond_6
    const-string v0, "TelecomUtilsAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSpeakerStateByCall() do nothing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static saveVTSpeakerState(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 810
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 811
    if-eqz v3, :cond_0

    .line 812
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->getVTSpeakerState(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 814
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    .line 815
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getCallType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 820
    :goto_0
    if-eqz v0, :cond_0

    .line 821
    const-string v0, "TelecomUtilsAudio"

    const-string v4, "saveVTSpeakerState"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 823
    invoke-static {v3, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    .line 830
    :cond_0
    :goto_1
    return-void

    .line 824
    :cond_1
    if-ne p0, v1, :cond_0

    .line 825
    invoke-static {v3, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static saveVTSpeakerStateForRinging(Z)V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 801
    if-eqz p0, :cond_1

    .line 802
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setVTSpeakerState(Lcom/android/server/telecom/Call;I)V

    goto :goto_0
.end method

.method public static setAudioForAddCall(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 833
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->initializeVTSpeakerState(Lcom/android/server/telecom/Call;)V

    .line 834
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndUpdateForAudio(Lcom/android/server/telecom/Call;)V

    .line 835
    return-void
.end method

.method public static setPlayingSecCallEndTone(Z)V
    .locals 0

    .prologue
    .line 345
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z

    .line 346
    return-void
.end method

.method private static setVTSpeakerState(Lcom/android/server/telecom/Call;I)V
    .locals 2

    .prologue
    .line 786
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setVTSpeakerState(I)V

    .line 789
    :cond_0
    return-void
.end method

.method public static startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 249
    const-string v2, "call_answer_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "call_end_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 257
    if-ge v2, v1, :cond_2

    .line 264
    :goto_0
    return v0

    .line 253
    :cond_1
    const-string v1, "TelecomUtilsAudio"

    const-string v2, "startCallVibration : There are no machted type "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_2
    if-ne v2, v1, :cond_3

    .line 261
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 262
    const v2, 0xc36b

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    :cond_3
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public static startFlatMotionListening(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 698
    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 699
    :try_start_0
    const-string v0, "TelecomUtilsAudio"

    const-string v4, "startFlatMotionListening : "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sIsFlatMotionListening:Z

    if-nez v0, :cond_2

    .line 701
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 702
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 705
    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 707
    :goto_0
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 708
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    .line 709
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 710
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sIsFlatMotionListening:Z

    .line 715
    :cond_2
    :goto_1
    monitor-exit v3

    .line 716
    return-void

    :cond_3
    move v0, v1

    .line 705
    goto :goto_0

    .line 712
    :cond_4
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "getting sSContextManager failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startWaitingTone()V
    .locals 4

    .prologue
    .line 611
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/16 v0, 0x65

    const/4 v1, 0x0

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->postMessage(ILjava/lang/Object;J)V

    .line 614
    :cond_0
    return-void
.end method

.method public static stopFlatMotionListening(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 719
    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 720
    :try_start_0
    const-string v0, "TelecomUtilsAudio"

    const-string v4, "stopFlatMotionListening"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sIsFlatMotionListening:Z

    if-ne v0, v2, :cond_2

    .line 722
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 723
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 726
    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 727
    :goto_0
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 729
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->sIsFlatMotionListening:Z

    .line 730
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPhoneMotionStatus:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    .line 735
    :cond_2
    :goto_1
    monitor-exit v3

    .line 736
    return-void

    :cond_3
    move v0, v1

    .line 726
    goto :goto_0

    .line 732
    :cond_4
    const-string v0, "TelecomUtilsAudio"

    const-string v1, "getting sSContextManager failed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopWaitingTone()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public static wasVTSpeakerOn(Lcom/android/server/telecom/Call;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 739
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->getVTSpeakerState(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
