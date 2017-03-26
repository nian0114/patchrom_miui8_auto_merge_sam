.class public Lcom/sec/android/app/camera/engine/CeStatePreviewing;
.super Lcom/sec/android/app/camera/engine/AbstractCeState;
.source "CeStatePreviewing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStatePreviewing"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V
    .locals 0
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/AbstractCeState;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V

    .line 30
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
    const-string v0, "CeStatePreviewing"

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

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 48
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 60
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 63
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 66
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 73
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 76
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 80
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 83
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 86
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 89
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 92
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 95
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 98
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 101
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_e
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_d
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_1
        0xf -> :sswitch_7
        0x10 -> :sswitch_a
        0x12 -> :sswitch_2
        0x13 -> :sswitch_6
        0x14 -> :sswitch_f
        0x15 -> :sswitch_b
        0x65 -> :sswitch_c
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    const/4 v1, 0x1

    .line 108
    const-string v0, "CeStatePreviewing"

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

    .line 109
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :pswitch_0
    const-string v0, "CeStatePreviewing"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 322
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPreview()V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCamcorderPreview()V

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCameraPreview()V

    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setCamcorderPreviewParameters()V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPreview()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopEngine()V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->autoFocusAsync()V

    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAE(I)V

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeParameterSync(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setMultipleParametersSync(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 142
    goto/16 :goto_0

    .line 144
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startShutterTimer(I)V

    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 147
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->progressWheelTimerAsync(I)V

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 150
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAllParameters()V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 152
    goto/16 :goto_0

    .line 154
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitAsync(I)V

    move v0, v1

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startBurstCaptureAsync()V

    move v0, v1

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopBurstCaptureSync()V

    move v0, v1

    .line 161
    goto/16 :goto_0

    .line 163
    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startVirtualShot()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVirtualShot()V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startPanoramaAsync()V

    move v0, v1

    .line 172
    goto/16 :goto_0

    .line 174
    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPanorama()V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 178
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMotionPanoramaAsync()V

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 181
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMotionPanorama()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 185
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startWideSelfieAsync()V

    move v0, v1

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopWideSelfie()V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setShutterSound(I)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startShotAndMoreSync()V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 200
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopShotAndMore()V

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 205
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->prepareVideoRecordingAsync()V

    move v0, v1

    .line 206
    goto/16 :goto_0

    .line 208
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startVideoRecordingAsync()V

    move v0, v1

    .line 209
    goto/16 :goto_0

    .line 211
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingSync()V

    move v0, v1

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V

    move v0, v1

    .line 217
    goto/16 :goto_0

    .line 219
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelVideoRecordingSync()V

    move v0, v1

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->releaseShootingModeRecordKey()V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 224
    goto/16 :goto_0

    .line 226
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectOrientationSync(I)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 228
    goto/16 :goto_0

    .line 230
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSingleEffectSync(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 232
    goto/16 :goto_0

    .line 234
    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->hideCoverCamera()V

    move v0, v1

    .line 235
    goto/16 :goto_0

    .line 237
    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setFaceRetouchLevelSync(I)V

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 241
    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSlimFaceLevelSync(I)V

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 243
    goto/16 :goto_0

    .line 245
    :pswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSpotlightLevelSync(I)V

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 247
    goto/16 :goto_0

    .line 249
    :pswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEyeEnlargeLevelSync(I)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 251
    goto/16 :goto_0

    .line 253
    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAntiFogLevelSync(I)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 257
    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCamera()V

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 259
    goto/16 :goto_0

    .line 261
    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startDualCamera()V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 263
    goto/16 :goto_0

    .line 265
    :pswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePictureAsync()V

    move v0, v1

    .line 266
    goto/16 :goto_0

    .line 268
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMultiFrameModeSync(I)V

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 270
    goto/16 :goto_0

    .line 272
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startFaceDetection()V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 274
    goto/16 :goto_0

    .line 276
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setOneShotPreviewCallback()V

    move v0, v1

    .line 277
    goto/16 :goto_0

    .line 279
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->requestNotifyPreviewStarted()V

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 282
    :pswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->initializeSecCameraListener()V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 284
    goto/16 :goto_0

    .line 286
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectParameter(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 288
    goto/16 :goto_0

    .line 290
    :pswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleSetShootingMode()V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 292
    goto/16 :goto_0

    .line 294
    :pswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->activateShootingMode()V

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 296
    goto/16 :goto_0

    .line 298
    :pswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->prepareMultiTrackRecording()V

    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 301
    :pswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMultiTrackRecording()V

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 305
    :pswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMultiTrackRecording()V

    move v0, v1

    .line 306
    goto/16 :goto_0

    .line 308
    :pswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setDualEffectLayerOrder()V

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 310
    goto/16 :goto_0

    .line 312
    :pswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startScreenFlash()V

    move v0, v1

    .line 313
    goto/16 :goto_0

    .line 315
    :pswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->standbyPreview()V

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 317
    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_30
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2b
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_4
        :pswitch_0
        :pswitch_21
        :pswitch_2c
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_24
        :pswitch_2d
        :pswitch_7
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_14
        :pswitch_15
        :pswitch_37
        :pswitch_38
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method
