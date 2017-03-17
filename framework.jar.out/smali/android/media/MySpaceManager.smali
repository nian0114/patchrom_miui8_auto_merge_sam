.class public Landroid/media/MySpaceManager;
.super Ljava/lang/Object;
.source "MySpaceManager.java"


# static fields
.field public static final MYSPACE_BYPASS:I = 0x5

.field public static final MYSPACE_CLEAR_PRESET:I = 0x6

.field public static final MYSPACE_EFFECT_MAX_TIMED_OUT:I = 0x5dc

.field public static final MYSPACE_EFFECT_TIMED_OUT:I = 0x3e8

.field public static final MYSPACE_MUSIC_FADEIN:I = 0x0

.field public static final MYSPACE_MUSIC_FADEOUT:I = 0x1

.field public static final MYSPACE_MUSIC_FADE_OUT_IN:I = 0x4

.field public static final MYSPACE_RING_FADEIN:I = 0x2

.field public static final MYSPACE_RING_FADEOUT:I = 0x3

.field private static final STREAM_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MySpaceManager"


# instance fields
.field public final mMusicAttributes:Landroid/media/AudioAttributes;

.field public final mRingAttributes:Landroid/media/AudioAttributes;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MySpaceManager;->mRingAttributes:Landroid/media/AudioAttributes;

    .line 60
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    .line 34
    return-void
.end method


# virtual methods
.method public MySpaceSet3DPosition(IFFF)V
    .locals 2
    .param p1, "enable"    # I
    .param p2, "mX"    # F
    .param p3, "mY"    # F
    .param p4, "mZ"    # F

    .prologue
    .line 140
    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;MySpaceSet3DPosition=1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;MySpaceSet3DPosition=0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkEnableCondition()Z
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "mEnable":Z
    const-string v2, "audioParam;outDevice"

    invoke-static {v2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x200003f0

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public playMySpaceEffect(II)V
    .locals 5
    .param p1, "usage"    # I
    .param p2, "effectPreset"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-nez p2, :cond_3

    .line 106
    if-ne p1, v0, :cond_2

    .line 107
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/MySpaceManager;->setParameter(I)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 113
    :cond_2
    if-ne p1, v3, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 116
    :cond_3
    if-ne p2, v0, :cond_4

    .line 117
    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 120
    :cond_4
    if-ne p2, v4, :cond_5

    .line 121
    if-ne p1, v3, :cond_0

    .line 122
    invoke-virtual {p0, v4}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 124
    :cond_5
    if-ne p2, v2, :cond_0

    .line 125
    if-ne p1, v3, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0
.end method

.method public playMySpaceEffect(Landroid/media/AudioAttributes;I)V
    .locals 6
    .param p1, "mAudioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "effectPreset"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    if-nez p2, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 69
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/MySpaceManager;->setParameter(I)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 78
    :cond_3
    if-ne p2, v2, :cond_4

    .line 79
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 80
    invoke-virtual {p0, v2}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 82
    :cond_4
    if-ne p2, v5, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 84
    invoke-virtual {p0, v5}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0

    .line 86
    :cond_5
    if-ne p2, v3, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 88
    invoke-virtual {p0, v3}, Landroid/media/MySpaceManager;->setParameter(I)V

    goto :goto_0
.end method

.method public setParameter(I)V
    .locals 2
    .param p1, "presetType"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioEffectParam;setMySpaceEffectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 38
    return-void
.end method
