.class public Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1280_720:I = 0x3

.field private static final PROFILE_1440_1080:I = 0x2

.field private static final PROFILE_1440_1440:I = 0x1

.field private static final PROFILE_176_144:I = 0x7

.field private static final PROFILE_1920_1080:I = 0x0

.field private static final PROFILE_1920_1080_60FPS:I = 0xb

.field private static final PROFILE_2560_1440:I = 0xc

.field private static final PROFILE_320_240:I = 0x6

.field private static final PROFILE_3840_2160:I = 0x9

.field private static final PROFILE_640_360:I = 0xa

.field private static final PROFILE_640_480:I = 0x5

.field private static final PROFILE_720_480:I = 0x4

.field private static final PROFILE_960_720_24FPS:I = 0xe

.field private static final PROFILE_960_960_24FPS:I = 0xd

.field private static final PROFILE_MMS:I = 0x8

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x1

.field private static final PROPERTY_VIDEO_BITRATE_USING_GPU:I = 0x2

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_FRAME_RATE_USING_GPU:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field private mAudioBitrate:I

.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioSamplingRate:I

.field private mOutputFormat:I

.field private mProfileTable:[[I

.field private mVideoBitrate:I

.field private mVideoEncoder:I

.field private mVideoFps:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(ILcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;Z)V
    .locals 11
    .param p1, "resolutionId"    # I
    .param p2, "requestedMediaRecorderProfileInfo"    # Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;
    .param p3, "isUsingGPU"    # Z

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v3, 0xf

    new-array v3, v3, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v5, v6, [I

    fill-array-data v5, :array_4

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v8

    new-array v4, v6, [I

    fill-array-data v4, :array_6

    aput-object v4, v3, v9

    new-array v4, v6, [I

    fill-array-data v4, :array_7

    aput-object v4, v3, v10

    const/16 v4, 0x8

    new-array v5, v6, [I

    fill-array-data v5, :array_8

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v6, [I

    fill-array-data v5, :array_9

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_a

    aput-object v4, v3, v6

    const/16 v4, 0xb

    new-array v5, v6, [I

    fill-array-data v5, :array_b

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v6, [I

    fill-array-data v5, :array_c

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v6, [I

    fill-array-data v5, :array_d

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v6, [I

    fill-array-data v5, :array_e

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    .line 131
    const/4 v2, 0x4

    .line 132
    .local v2, "propertyIndex":I
    const/4 v0, 0x1

    .line 133
    .local v0, "bitrateIndex":I
    const/4 v1, 0x3

    .line 135
    .local v1, "fpsIndex":I
    sparse-switch p1, :sswitch_data_0

    .line 183
    :goto_0
    if-eqz p3, :cond_0

    .line 184
    const/4 v0, 0x2

    .line 185
    const/4 v1, 0x4

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v7

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoBitrate:I

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFps:I

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v8

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    .line 193
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    .line 194
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v9

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    aget v3, v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioBitrate:I

    .line 197
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v2

    const/16 v4, 0x9

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 200
    if-eqz p2, :cond_8

    .line 201
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    if-lez v3, :cond_1

    .line 202
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    .line 205
    :cond_1
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    if-lez v3, :cond_2

    .line 206
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoBitrate:I

    .line 209
    :cond_2
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoFps:I

    if-lez v3, :cond_3

    .line 210
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoFps:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFps:I

    .line 213
    :cond_3
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->outputFormat:I

    if-lez v3, :cond_4

    .line 214
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->outputFormat:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    .line 217
    :cond_4
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    if-lez v3, :cond_5

    .line 218
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    .line 221
    :cond_5
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    if-lez v3, :cond_6

    .line 222
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioBitrate:I

    .line 225
    :cond_6
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioChannels:I

    if-lez v3, :cond_7

    .line 226
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioChannels:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    .line 229
    :cond_7
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    if-lez v3, :cond_8

    .line 230
    iget v3, p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 233
    :cond_8
    return-void

    .line 137
    :sswitch_0
    const/16 v2, 0xb

    .line 138
    goto/16 :goto_0

    .line 140
    :sswitch_1
    const/4 v2, 0x0

    .line 141
    goto/16 :goto_0

    .line 143
    :sswitch_2
    const/4 v2, 0x1

    .line 144
    goto/16 :goto_0

    .line 146
    :sswitch_3
    const/4 v2, 0x2

    .line 147
    goto/16 :goto_0

    .line 149
    :sswitch_4
    const/4 v2, 0x3

    .line 150
    goto/16 :goto_0

    .line 152
    :sswitch_5
    const/4 v2, 0x4

    .line 153
    goto/16 :goto_0

    .line 155
    :sswitch_6
    const/4 v2, 0x5

    .line 156
    goto/16 :goto_0

    .line 158
    :sswitch_7
    const/16 v2, 0xa

    .line 159
    goto/16 :goto_0

    .line 161
    :sswitch_8
    const/4 v2, 0x6

    .line 162
    goto/16 :goto_0

    .line 164
    :sswitch_9
    const/4 v2, 0x7

    .line 165
    goto/16 :goto_0

    .line 167
    :sswitch_a
    const/16 v2, 0x9

    .line 168
    goto/16 :goto_0

    .line 170
    :sswitch_b
    const/16 v2, 0xc

    .line 171
    goto/16 :goto_0

    .line 173
    :sswitch_c
    const/16 v2, 0xd

    .line 174
    goto/16 :goto_0

    .line 176
    :sswitch_d
    const/16 v2, 0xe

    .line 177
    goto/16 :goto_0

    .line 179
    :sswitch_e
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 70
    nop

    :array_0
    .array-data 4
        0x2
        0x1036640
        0xd59f80
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xe4e1c0
        0xe4e1c0
        0x1e
        0x1e
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xc65d40
        0xa1be40
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0xb71b00
        0x9477d0
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x34a0a8
        0x2a1958
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2ef770
        0x2625a0
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_6
    .array-data 4
        0x2
        0xbb418
        0x97db0
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x5dc00
        0x5dc00
        0x1e
        0x1e
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x17764
        0x17764
        0xf
        0xf
        0x1
        0x1
        0x2fa8
        0x1
        0x1f40
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2dc6c00
        0x2dc6c00
        0x1e
        0x1e
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2ef770
        0x2625a0
        0x1e
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_b
    .array-data 4
        0x2
        0xd59f80
        0xd59f80
        0x3c
        0x3c
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x17d7840
        0x17d7840
        0x1e
        0x1e
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_d
    .array-data 4
        0x2
        0xb71b00
        0xb71b00
        0x18
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x895440
        0x895440
        0x18
        0x18
        0x2
        0x3
        0x3e800
        0x2
        0xbb80
    .end array-data

    .line 135
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_1
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_b
        0x1f -> :sswitch_3
        0x22 -> :sswitch_d
        0x28 -> :sswitch_a
        0x29 -> :sswitch_7
        0x2a -> :sswitch_0
        0x34 -> :sswitch_2
        0x3e -> :sswitch_c
        0x64 -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public dumpProfile()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "MediaRecorderProfile"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncoder()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    return v0
.end method

.method public getAudioSamplingRate()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    return v0
.end method

.method public getOutputFormat()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method public getVideoEncoder()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    return v0
.end method

.method public getVideoFps()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFps:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    return v0
.end method
