.class public Lcom/sec/android/app/camera/engine/CeStateInitialized;
.super Lcom/sec/android/app/camera/engine/AbstractCeState;
.source "CeStateInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateInitialized"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V
    .locals 0
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/AbstractCeState;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    .line 35
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 48
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 51
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 54
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 57
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 63
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 68
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 72
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 75
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 79
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_6
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0xd -> :sswitch_7
        0xe -> :sswitch_5
        0x12 -> :sswitch_6
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    const/4 v1, 0x1

    .line 86
    const-string v0, "CeStateInitialized"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    const-string v0, "CeStateInitialized"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 212
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopEngine()V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startPreviewAsync()V

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAE(I)V

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMultiFrameModeSync(I)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePictureAsync()V

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeParameterSync(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setMultipleParametersSync(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->initializeSecCameraListener()V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAllParameters()V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 122
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitAsync(I)V

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 125
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startShutterTimer(I)V

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 128
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->progressWheelTimerAsync(I)V

    move v0, v1

    .line 129
    goto/16 :goto_0

    .line 131
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setShutterSound(I)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 133
    goto/16 :goto_0

    .line 136
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->prepareVideoRecordingAsync()V

    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 139
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startVideoRecordingAsync()V

    move v0, v1

    .line 140
    goto/16 :goto_0

    .line 142
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingSync()V

    move v0, v1

    .line 143
    goto/16 :goto_0

    .line 145
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V

    move v0, v1

    .line 146
    goto/16 :goto_0

    .line 148
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCamcorderPreview()V

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 151
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->releaseShootingModeRecordKey()V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 153
    goto/16 :goto_0

    .line 155
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setCamcorderPreviewParameters()V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 159
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startDualCamera()V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 161
    goto/16 :goto_0

    .line 163
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCameraPreview()V

    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 166
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectOrientationSync(I)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 168
    goto/16 :goto_0

    .line 170
    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->hideCoverCamera()V

    move v0, v1

    .line 171
    goto/16 :goto_0

    .line 173
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setFaceRetouchLevelSync(I)V

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 175
    goto/16 :goto_0

    .line 177
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSlimFaceLevelSync(I)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 181
    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSpotlightLevelSync(I)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 185
    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEyeEnlargeLevelSync(I)V

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 187
    goto/16 :goto_0

    .line 189
    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAntiFogLevelSync(I)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 191
    goto/16 :goto_0

    .line 193
    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectParameter(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 195
    goto/16 :goto_0

    .line 197
    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleSetShootingMode()V

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 199
    goto/16 :goto_0

    .line 201
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->activateShootingMode()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 203
    goto/16 :goto_0

    .line 205
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCamera()V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 207
    goto/16 :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x9 -> :sswitch_a
        0xa -> :sswitch_8
        0xd -> :sswitch_9
        0x13 -> :sswitch_20
        0x14 -> :sswitch_14
        0x19 -> :sswitch_b
        0x1f -> :sswitch_6
        0x20 -> :sswitch_15
        0x21 -> :sswitch_11
        0x2e -> :sswitch_c
        0x2f -> :sswitch_13
        0x31 -> :sswitch_16
        0x32 -> :sswitch_3
        0x35 -> :sswitch_17
        0x3a -> :sswitch_18
        0x3c -> :sswitch_2
        0x45 -> :sswitch_19
        0x46 -> :sswitch_1a
        0x47 -> :sswitch_1b
        0x4a -> :sswitch_1c
        0x4c -> :sswitch_1d
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_1f
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6a -> :sswitch_10
        0x6d -> :sswitch_12
    .end sparse-switch
.end method
