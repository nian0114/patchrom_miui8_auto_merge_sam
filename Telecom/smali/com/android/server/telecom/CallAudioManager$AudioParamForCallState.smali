.class public Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;
.super Ljava/lang/Object;
.source "CallAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioParamForCallState"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field public mCurrentAudioParam:I

.field final synthetic this$0:Lcom/android/server/telecom/CallAudioManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallAudioManager;Landroid/media/AudioManager;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->this$0:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mCurrentAudioParam:I

    .line 253
    iput-object p2, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mAudioManager:Landroid/media/AudioManager;

    .line 254
    return-void
.end method

.method private audioParamToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sparse-switch p1, :sswitch_data_0

    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 307
    :sswitch_0
    const-string v0, "CALL_STATUS_CS_VOICE_CP_VIDEO_CALL_OFF"

    goto :goto_0

    .line 309
    :sswitch_1
    const-string v0, "CALL_STATUS_CS_VOICE_CALL_ON or CALL_STATUS_CP_VIDEO_CALL_ON"

    goto :goto_0

    .line 311
    :sswitch_2
    const-string v0, "CALL_STATUS_WIFI_CALL_OFF"

    goto :goto_0

    .line 313
    :sswitch_3
    const-string v0, "CALL_STATUS_WIFI_CALL_ON"

    goto :goto_0

    .line 315
    :sswitch_4
    const-string v0, "CALL_STATUS_VOLTE_HANDOVER_OFF or CALL_STATUS_VOLTE_AP_VIDEO_CALL_OFF"

    goto :goto_0

    .line 317
    :sswitch_5
    const-string v0, "CALL_STATUS_VOLTE_AP_VIDEO_CALL_ON"

    goto :goto_0

    .line 319
    :sswitch_6
    const-string v0, "CALL_STATUS_VOLTE_CP_VOICE_VIDEO_CALL_OFF"

    goto :goto_0

    .line 321
    :sswitch_7
    const-string v0, "CALL_STATUS_VOLTE_CP_VOICE_CALL_ON"

    goto :goto_0

    .line 323
    :sswitch_8
    const-string v0, "CALL_STATUS_VOLTE_CP_VIDEO_CALL_ON"

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x101 -> :sswitch_6
        0x202 -> :sswitch_7
        0x400 -> :sswitch_5
        0x402 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public getAudioParam()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mCurrentAudioParam:I

    return v0
.end method

.method public setAudioParam(I)V
    .locals 2

    .prologue
    .line 258
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    const-string v1, "CallAudioManager call.3rdParty set 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "call.3rdParty"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(IZ)V

    .line 263
    return-void
.end method

.method public setAudioParam(IZ)V
    .locals 3

    .prologue
    .line 266
    if-eqz p2, :cond_0

    .line 267
    iput p1, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mCurrentAudioParam:I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallAudioManager : setAudioParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->audioParamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public setOffAudioParam()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 280
    iget v1, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mCurrentAudioParam:I

    sparse-switch v1, :sswitch_data_0

    .line 297
    sget-object v1, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallAudioManager : no offParam for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->mCurrentAudioParam:I

    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->audioParamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager$AudioParamForCallState;->setAudioParam(I)V

    .line 302
    return-void

    .line 286
    :sswitch_1
    const/16 v0, 0x10

    .line 287
    goto :goto_0

    .line 290
    :sswitch_2
    const/16 v0, 0x101

    .line 291
    goto :goto_0

    .line 293
    :sswitch_3
    const/16 v0, 0x100

    .line 294
    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x20 -> :sswitch_1
        0x202 -> :sswitch_2
        0x400 -> :sswitch_3
        0x402 -> :sswitch_2
    .end sparse-switch
.end method
