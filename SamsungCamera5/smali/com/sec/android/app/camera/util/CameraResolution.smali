.class public Lcom/sec/android/app/camera/util/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final CIF_ASPECT_RATIO_TYPE:I = 0x3

.field public static final NORMAL_ASPECT_RATIO_TYPE:I = 0x1

.field public static final RESOLUTION_1024X576:I = 0x27

.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1066X800:I = 0x45

.field public static final RESOLUTION_1072X1072:I = 0x2f

.field public static final RESOLUTION_1088X1088:I = 0x3c

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1440X1440:I = 0x34

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X900:I = 0x48

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1616X1212:I = 0x47

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_1920X1080_60FPS:I = 0x2a

.field public static final RESOLUTION_1920X1440:I = 0x35

.field public static final RESOLUTION_1920X1920:I = 0x3b

.field public static final RESOLUTION_1936X1936:I = 0x3a

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2160X2160:I = 0x44

.field public static final RESOLUTION_2448X2448:I = 0x30

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2576X1932:I = 0x3d

.field public static final RESOLUTION_2592X1458:I = 0x37

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_2592X2592:I = 0x33

.field public static final RESOLUTION_2880X2160:I = 0x42

.field public static final RESOLUTION_2976X2976:I = 0x2e

.field public static final RESOLUTION_3024X3024:I = 0x43

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_3096X3096:I = 0x2b

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_3344X3344:I = 0x39

.field public static final RESOLUTION_3456X2592:I = 0x32

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_3840X2160:I = 0x28

.field public static final RESOLUTION_3984X2988:I = 0x2d

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4032X2268:I = 0x41

.field public static final RESOLUTION_4032X3024:I = 0x40

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_4608X2592:I = 0x31

.field public static final RESOLUTION_4608X3456:I = 0x3f

.field public static final RESOLUTION_5312X2988:I = 0x2c

.field public static final RESOLUTION_640X360:I = 0x29

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_800X800:I = 0x46

.field public static final RESOLUTION_960X540:I = 0x26

.field public static final RESOLUTION_960X720:I = 0x22

.field public static final RESOLUTION_960X960:I = 0x3e

.field public static final RESOLUTION_MMS:I = 0x64

.field public static final SQUARE_ASPECT_RATIO_TYPE:I = 0x2

.field public static final WIDE_ASPECT_RATIO_TYPE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .param p0, "res1"    # I
    .param p1, "res2"    # I

    .prologue
    .line 113
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 114
    .local v1, "dw":I
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 116
    .local v0, "dh":I
    if-lez v1, :cond_1

    .line 125
    .end local v1    # "dw":I
    :cond_0
    :goto_0
    return v1

    .line 118
    .restart local v1    # "dw":I
    :cond_1
    if-nez v1, :cond_0

    .line 119
    if-lez v0, :cond_2

    move v1, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAspectRatio(I)D
    .locals 4
    .param p0, "resid"    # I

    .prologue
    .line 129
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getAspectRatioType(I)I
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    .line 143
    sparse-switch p0, :sswitch_data_0

    .line 158
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 146
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 148
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 150
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 152
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 154
    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 156
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIntHeight(I)I
    .locals 5
    .param p0, "resid"    # I

    .prologue
    const/16 v4, 0xbd0

    const/16 v1, 0x990

    const/16 v2, 0x1e0

    const/16 v3, 0x90

    const/16 v0, 0x870

    .line 163
    packed-switch p0, :pswitch_data_0

    .line 288
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 165
    :pswitch_2
    const/16 v0, 0xd10

    goto :goto_0

    .line 168
    :pswitch_3
    const/16 v0, 0xc18

    goto :goto_0

    .line 170
    :pswitch_4
    const/16 v0, 0xc00

    goto :goto_0

    .line 173
    :pswitch_5
    const/16 v0, 0xbac

    goto :goto_0

    .line 177
    :pswitch_6
    const/16 v0, 0xba0

    goto :goto_0

    .line 179
    :pswitch_7
    const/16 v0, 0x78c

    goto :goto_0

    .line 181
    :pswitch_8
    const/16 v0, 0x440

    goto :goto_0

    .line 185
    :pswitch_9
    const/16 v0, 0xa20

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_b
    const/16 v0, 0x912

    goto :goto_0

    .line 192
    :pswitch_c
    const/16 v0, 0x900

    goto :goto_0

    .line 194
    :pswitch_d
    const/16 v0, 0x7b0

    goto :goto_0

    .line 196
    :pswitch_e
    const/16 v0, 0x798

    goto :goto_0

    .line 198
    :pswitch_f
    const/16 v0, 0x790

    goto :goto_0

    .line 201
    :pswitch_10
    const/16 v0, 0x780

    goto :goto_0

    .line 203
    :pswitch_11
    const/16 v0, 0x740

    goto :goto_0

    .line 205
    :pswitch_12
    const/16 v0, 0x72c

    goto :goto_0

    .line 208
    :pswitch_13
    const/16 v0, 0x600

    goto :goto_0

    .line 210
    :pswitch_14
    const/16 v0, 0x5b2

    goto :goto_0

    .line 214
    :pswitch_15
    const/16 v0, 0x5a0

    goto :goto_0

    .line 216
    :pswitch_16
    const/16 v0, 0x4d0

    goto :goto_0

    .line 218
    :pswitch_17
    const/16 v0, 0x4b0

    goto :goto_0

    .line 220
    :pswitch_18
    const/16 v0, 0x4bc

    goto :goto_0

    .line 222
    :pswitch_19
    const/16 v0, 0x384

    goto :goto_0

    .line 224
    :pswitch_1a
    const/16 v0, 0x570

    goto :goto_0

    .line 226
    :pswitch_1b
    const/16 v0, 0x480

    goto :goto_0

    .line 228
    :pswitch_1c
    const/16 v0, 0x450

    goto :goto_0

    .line 232
    :pswitch_1d
    const/16 v0, 0x438

    goto :goto_0

    .line 236
    :pswitch_1e
    const/16 v0, 0x3c0

    goto :goto_0

    .line 238
    :pswitch_1f
    const/16 v0, 0x370

    goto :goto_0

    .line 240
    :pswitch_20
    const/16 v0, 0x360

    goto :goto_0

    .line 244
    :pswitch_21
    const/16 v0, 0x320

    goto :goto_0

    .line 246
    :pswitch_22
    const/16 v0, 0x21c

    goto :goto_0

    :pswitch_23
    move v0, v2

    .line 249
    goto :goto_0

    .line 251
    :pswitch_24
    const/16 v0, 0x1c2

    goto :goto_0

    .line 254
    :pswitch_25
    const/16 v0, 0x2d0

    goto :goto_0

    .line 256
    :pswitch_26
    const/16 v0, 0x2a0

    goto :goto_0

    :pswitch_27
    move v0, v2

    .line 258
    goto :goto_0

    .line 260
    :pswitch_28
    const/16 v0, 0x168

    goto :goto_0

    .line 263
    :pswitch_29
    const/16 v0, 0xf0

    goto :goto_0

    :pswitch_2a
    move v0, v3

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2b
    const/16 v0, 0x300

    goto :goto_0

    .line 269
    :pswitch_2c
    const/16 v0, 0x240

    goto :goto_0

    .line 273
    :pswitch_2d
    const/16 v0, 0x430

    goto :goto_0

    :pswitch_2e
    move v0, v1

    .line 275
    goto/16 :goto_0

    :pswitch_2f
    move v0, v4

    .line 277
    goto/16 :goto_0

    .line 279
    :pswitch_30
    const/16 v0, 0x8dc

    goto/16 :goto_0

    :pswitch_31
    move v0, v4

    .line 281
    goto/16 :goto_0

    :pswitch_32
    move v0, v3

    .line 285
    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_23
        :pswitch_23
        :pswitch_1d
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_12
        :pswitch_15
        :pswitch_21
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_26
        :pswitch_4
        :pswitch_1d
        :pswitch_3
        :pswitch_b
        :pswitch_25
        :pswitch_24
        :pswitch_c
        :pswitch_2b
        :pswitch_22
        :pswitch_2c
        :pswitch_1
        :pswitch_28
        :pswitch_1d
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_2d
        :pswitch_2e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_1e
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_1
        :pswitch_31
        :pswitch_1
        :pswitch_21
        :pswitch_21
        :pswitch_18
        :pswitch_19
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
        :pswitch_32
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .param p0, "resid"    # I

    .prologue
    const/16 v0, 0xb0

    .line 292
    packed-switch p0, :pswitch_data_0

    .line 407
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 294
    :pswitch_2
    const/16 v0, 0x14c0

    goto :goto_0

    .line 296
    :pswitch_3
    const/16 v0, 0x1200

    goto :goto_0

    .line 299
    :pswitch_4
    const/16 v0, 0x1020

    goto :goto_0

    .line 302
    :pswitch_5
    const/16 v0, 0x1000

    goto :goto_0

    .line 305
    :pswitch_6
    const/16 v0, 0xfc0

    goto :goto_0

    .line 307
    :pswitch_7
    const/16 v0, 0xf90

    goto :goto_0

    .line 309
    :pswitch_8
    const/16 v0, 0xd80

    goto :goto_0

    .line 311
    :pswitch_9
    const/16 v0, 0xd10

    goto :goto_0

    .line 315
    :pswitch_a
    const/16 v0, 0xcc0

    goto :goto_0

    .line 317
    :pswitch_b
    const/16 v0, 0xc18

    goto :goto_0

    .line 320
    :pswitch_c
    const/16 v0, 0xc00

    goto :goto_0

    .line 322
    :pswitch_d
    const/16 v0, 0xb40

    goto :goto_0

    .line 324
    :pswitch_e
    const/16 v0, 0xba0

    goto :goto_0

    .line 328
    :pswitch_f
    const/16 v0, 0xa20

    goto :goto_0

    .line 330
    :pswitch_10
    const/16 v0, 0xa10

    goto :goto_0

    .line 334
    :pswitch_11
    const/16 v0, 0xa00

    goto :goto_0

    .line 339
    :pswitch_12
    const/16 v0, 0x800

    goto :goto_0

    .line 341
    :pswitch_13
    const/16 v0, 0x790

    goto :goto_0

    .line 346
    :pswitch_14
    const/16 v0, 0x780

    goto :goto_0

    .line 348
    :pswitch_15
    const/16 v0, 0x660

    goto :goto_0

    .line 352
    :pswitch_16
    const/16 v0, 0x640

    goto :goto_0

    .line 354
    :pswitch_17
    const/16 v0, 0x650

    goto :goto_0

    .line 356
    :pswitch_18
    const/16 v0, 0x600

    goto :goto_0

    .line 359
    :pswitch_19
    const/16 v0, 0x5a0

    goto :goto_0

    .line 361
    :pswitch_1a
    const/16 v0, 0x42a

    goto :goto_0

    .line 363
    :pswitch_1b
    const/16 v0, 0x570

    goto :goto_0

    .line 367
    :pswitch_1c
    const/16 v0, 0x500

    goto :goto_0

    .line 369
    :pswitch_1d
    const/16 v0, 0x4e0

    goto :goto_0

    .line 373
    :pswitch_1e
    const/16 v0, 0x3c0

    goto :goto_0

    .line 377
    :pswitch_1f
    const/16 v0, 0x320

    goto :goto_0

    .line 379
    :pswitch_20
    const/16 v0, 0x2d0

    goto :goto_0

    .line 382
    :pswitch_21
    const/16 v0, 0x280

    goto :goto_0

    .line 384
    :pswitch_22
    const/16 v0, 0x190

    goto :goto_0

    .line 386
    :pswitch_23
    const/16 v0, 0x140

    goto :goto_0

    .line 391
    :pswitch_24
    const/16 v0, 0x400

    goto :goto_0

    .line 393
    :pswitch_25
    const/16 v0, 0xf00

    goto :goto_0

    .line 395
    :pswitch_26
    const/16 v0, 0x430

    goto :goto_0

    .line 397
    :pswitch_27
    const/16 v0, 0x990

    goto :goto_0

    .line 399
    :pswitch_28
    const/16 v0, 0x440

    goto :goto_0

    .line 401
    :pswitch_29
    const/16 v0, 0xbd0

    goto :goto_0

    .line 403
    :pswitch_2a
    const/16 v0, 0x870

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_1c
        :pswitch_21
        :pswitch_1f
        :pswitch_14
        :pswitch_1c
        :pswitch_20
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_1
        :pswitch_a
        :pswitch_11
        :pswitch_1c
        :pswitch_12
        :pswitch_1b
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1d
        :pswitch_5
        :pswitch_19
        :pswitch_4
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_5
        :pswitch_24
        :pswitch_1e
        :pswitch_24
        :pswitch_25
        :pswitch_21
        :pswitch_14
        :pswitch_b
        :pswitch_2
        :pswitch_7
        :pswitch_e
        :pswitch_26
        :pswitch_27
        :pswitch_3
        :pswitch_8
        :pswitch_f
        :pswitch_19
        :pswitch_14
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_28
        :pswitch_10
        :pswitch_1e
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_1f
        :pswitch_17
        :pswitch_16
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
        :pswitch_1
    .end packed-switch
.end method

.method public static getMegaPixelString(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float v0, v1, v2

    .line 412
    .local v0, "megaPixel":F
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 413
    const-string v1, "%2.0f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    :goto_0
    return-object v1

    .line 414
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 415
    const-string v1, "%1.1f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 417
    :cond_1
    const-string v1, "%.2f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPictureSizeFullString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 554
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 549
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 424
    :pswitch_1
    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :pswitch_2
    const-string v0, "4:3 (13M)"

    goto :goto_0

    .line 428
    :pswitch_3
    const-string v0, "16:9 (12M)"

    goto :goto_0

    .line 430
    :pswitch_4
    const v0, 0x7f080256

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 432
    :pswitch_5
    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :pswitch_6
    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :pswitch_7
    const-string v0, "4:3 (9M)"

    goto :goto_0

    .line 438
    :pswitch_8
    const-string v0, "1:1 (9.1M)"

    goto :goto_0

    .line 440
    :pswitch_9
    const v0, 0x7f08024f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_a
    const-string v0, "16:9 (9.6M)"

    goto :goto_0

    .line 444
    :pswitch_b
    const-string v0, "4:3 (13.0M)"

    goto :goto_0

    .line 446
    :pswitch_c
    const-string v0, "16:9 (9.4M)"

    goto :goto_0

    .line 448
    :pswitch_d
    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :pswitch_e
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :pswitch_f
    const-string v0, "16:9 (6.5M)"

    goto :goto_0

    .line 454
    :pswitch_10
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :pswitch_11
    const-string v0, "4:3 (7.1M)"

    goto :goto_0

    .line 458
    :pswitch_12
    const-string v0, "16:9 (5.7M)"

    goto :goto_0

    .line 460
    :pswitch_13
    const v0, 0x7f08024e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :pswitch_14
    const-string v0, "1:1 (6.7M)"

    goto :goto_0

    .line 464
    :pswitch_15
    const v0, 0x7f08024d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :pswitch_16
    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 468
    :pswitch_17
    const v0, 0x7f08024c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 470
    :pswitch_18
    const v0, 0x7f08024a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 472
    :pswitch_19
    const-string v0, "16:9 (4.0M)"

    goto/16 :goto_0

    .line 474
    :pswitch_1a
    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 476
    :pswitch_1b
    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 478
    :pswitch_1c
    const-string v0, "16:9 (2.6M)"

    goto/16 :goto_0

    .line 480
    :pswitch_1d
    const v0, 0x7f080245

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 482
    :pswitch_1e
    const-string v0, "16:9 (2.3M)"

    goto/16 :goto_0

    .line 484
    :pswitch_1f
    const v0, 0x7f080244

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 486
    :pswitch_20
    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 488
    :pswitch_21
    const-string v0, "4:3 (2.8M)"

    goto/16 :goto_0

    .line 491
    :pswitch_22
    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 493
    :pswitch_23
    const-string v0, "16:9 (1.5M)"

    goto/16 :goto_0

    .line 495
    :pswitch_24
    const v0, 0x7f08023f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 497
    :pswitch_25
    const-string v0, "16:9 (1.6M)"

    goto/16 :goto_0

    .line 499
    :pswitch_26
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 501
    :pswitch_27
    const v0, 0x7f080240

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 503
    :pswitch_28
    const-string v0, "16:9 (1.4M)"

    goto/16 :goto_0

    .line 505
    :pswitch_29
    const-string v0, "1:1 (1.9M)"

    goto/16 :goto_0

    .line 507
    :pswitch_2a
    const-string v0, "1:1 (2.1M)"

    goto/16 :goto_0

    .line 509
    :pswitch_2b
    const v0, 0x7f08023e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 511
    :pswitch_2c
    const v0, 0x7f08023d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 513
    :pswitch_2d
    const v0, 0x7f08023b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 515
    :pswitch_2e
    const-string v0, "16:9 (1.0M)"

    goto/16 :goto_0

    .line 517
    :pswitch_2f
    const-string v0, "16:9 (0.5M)"

    goto/16 :goto_0

    .line 519
    :pswitch_30
    const-string v0, "16:9 (0.4M)"

    goto/16 :goto_0

    .line 521
    :pswitch_31
    const-string v0, "16:9 (0.4M)"

    goto/16 :goto_0

    .line 523
    :pswitch_32
    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 525
    :pswitch_33
    const-string v0, "16:9 (0.3M)"

    goto/16 :goto_0

    .line 527
    :pswitch_34
    const-string v0, "16:9 (0.8M)"

    goto/16 :goto_0

    .line 529
    :pswitch_35
    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 531
    :pswitch_36
    const-string v0, "4:3 (0.8M)"

    goto/16 :goto_0

    .line 533
    :pswitch_37
    const-string v0, "4:3 (0.7M)"

    goto/16 :goto_0

    .line 535
    :pswitch_38
    const-string v0, "4:3 (0.4M)"

    goto/16 :goto_0

    .line 537
    :pswitch_39
    const-string v0, "400x240"

    goto/16 :goto_0

    .line 539
    :pswitch_3a
    const-string v0, "320x240"

    goto/16 :goto_0

    .line 541
    :pswitch_3b
    const-string v0, "176x144"

    goto/16 :goto_0

    .line 543
    :pswitch_3c
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 545
    :pswitch_3d
    const v0, 0x7f080250

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 547
    :pswitch_3e
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_24
        :pswitch_25
        :pswitch_2c
        :pswitch_32
        :pswitch_30
        :pswitch_22
        :pswitch_35
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_10
        :pswitch_1a
        :pswitch_2e
        :pswitch_1d
        :pswitch_29
        :pswitch_15
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_34
        :pswitch_b
        :pswitch_2b
        :pswitch_2
        :pswitch_a
        :pswitch_37
        :pswitch_31
        :pswitch_c
        :pswitch_36
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_22
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_2d
        :pswitch_3c
        :pswitch_3
        :pswitch_7
        :pswitch_14
        :pswitch_2a
        :pswitch_21
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_d
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_13
        :pswitch_3d
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3d

    .line 562
    const-string v1, "4128x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    const/16 v0, 0x20

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    const-string v1, "5312x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    const/16 v0, 0x2c

    goto :goto_0

    .line 566
    :cond_2
    const-string v1, "4608x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    const/16 v0, 0x31

    goto :goto_0

    .line 568
    :cond_3
    const-string v1, "3984x2988"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 569
    const/16 v0, 0x2d

    goto :goto_0

    .line 570
    :cond_4
    const-string v1, "3456x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 571
    const/16 v0, 0x32

    goto :goto_0

    .line 572
    :cond_5
    const-string v1, "2976x2976"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 573
    const/16 v0, 0x2e

    goto :goto_0

    .line 574
    :cond_6
    const-string v1, "1088x1088"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 575
    const/16 v0, 0x3c

    goto :goto_0

    .line 576
    :cond_7
    const-string v1, "3096x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 577
    const/16 v0, 0x2b

    goto :goto_0

    .line 578
    :cond_8
    const-string v1, "4128x2322"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 579
    const/16 v0, 0x21

    goto :goto_0

    .line 580
    :cond_9
    const-string v1, "4096x3072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 581
    const/16 v0, 0x1e

    goto :goto_0

    .line 582
    :cond_a
    const-string v1, "4096x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 583
    const/16 v0, 0x24

    goto :goto_0

    .line 584
    :cond_b
    const-string v1, "3344x3344"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 585
    const/16 v0, 0x39

    goto :goto_0

    .line 586
    :cond_c
    const-string v1, "3264x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 587
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 588
    :cond_d
    const-string v1, "3264x1968"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 589
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 590
    :cond_e
    const-string v1, "3264x1836"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 591
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 592
    :cond_f
    const-string v1, "3072x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 593
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 594
    :cond_10
    const-string v1, "3072x1856"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 595
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 596
    :cond_11
    const-string v1, "2880x2160"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 597
    const/16 v0, 0x42

    goto/16 :goto_0

    .line 598
    :cond_12
    const-string v1, "2592x2592"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 599
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 600
    :cond_13
    const-string v1, "2592x1944"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 601
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 602
    :cond_14
    const-string v1, "2592x1458"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 603
    const/16 v0, 0x37

    goto/16 :goto_0

    .line 604
    :cond_15
    const-string v1, "2576x1932"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    const-string v1, "2560x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 607
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 608
    :cond_16
    const-string v1, "2560x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 609
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 610
    :cond_17
    const-string v1, "2560x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 611
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 612
    :cond_18
    const-string v1, "2048x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 613
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 614
    :cond_19
    const-string v1, "2048x1232"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 615
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 616
    :cond_1a
    const-string v1, "2048x1152"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 617
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 618
    :cond_1b
    const-string v1, "2048x1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 619
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 620
    :cond_1c
    const-string v1, "1936x1936"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 621
    const/16 v0, 0x3a

    goto/16 :goto_0

    .line 622
    :cond_1d
    const-string v1, "1920x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 623
    const/16 v0, 0x3b

    goto/16 :goto_0

    .line 624
    :cond_1e
    const-string v1, "1920x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 625
    const/16 v0, 0x35

    goto/16 :goto_0

    .line 626
    :cond_1f
    const-string v1, "1920x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 627
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 628
    :cond_20
    const-string v1, "1920x1080_60FPS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 629
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 630
    :cond_21
    const-string v1, "1440x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 631
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 632
    :cond_22
    const-string v1, "1632x880"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 633
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 634
    :cond_23
    const-string v1, "1600x1200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 635
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 636
    :cond_24
    const-string v1, "1600x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 637
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 638
    :cond_25
    const-string v1, "1616x1212"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 639
    const/16 v0, 0x47

    goto/16 :goto_0

    .line 640
    :cond_26
    const-string v1, "1600x900"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 641
    const/16 v0, 0x48

    goto/16 :goto_0

    .line 642
    :cond_27
    const-string v1, "1536x864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 643
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 644
    :cond_28
    const-string v1, "1392x1392"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 645
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 646
    :cond_29
    const-string v1, "1280x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 647
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 648
    :cond_2a
    const-string v1, "960x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 649
    const/16 v0, 0x3e

    goto/16 :goto_0

    .line 650
    :cond_2b
    const-string v1, "960x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 651
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 652
    :cond_2c
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 653
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 654
    :cond_2d
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 655
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 656
    :cond_2e
    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 657
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 658
    :cond_2f
    const-string v1, "640x360"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 659
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 660
    :cond_30
    const-string v1, "1280x800"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 661
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 662
    :cond_31
    const-string v1, "1280x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 663
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 664
    :cond_32
    const-string v1, "1248x672"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 665
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 666
    :cond_33
    const-string v1, "720x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 667
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 668
    :cond_34
    const-string v1, "400x240"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 669
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 670
    :cond_35
    const-string v1, "320x240"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 671
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 672
    :cond_36
    const-string v1, "176x144"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 673
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 674
    :cond_37
    const-string v1, "1024x768"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 675
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 676
    :cond_38
    const-string v1, "1024x576"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 677
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 678
    :cond_39
    const-string v1, "960x540"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 679
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 680
    :cond_3a
    const-string v1, "3840x2160"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 681
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 682
    :cond_3b
    const-string v1, "1072x1072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 683
    const/16 v0, 0x2f

    goto/16 :goto_0

    .line 684
    :cond_3c
    const-string v1, "2448x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 685
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 686
    :cond_3d
    const-string v1, "1440x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 687
    const/16 v0, 0x34

    goto/16 :goto_0

    .line 688
    :cond_3e
    const-string v1, "2576x1932"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    const-string v0, "4032x3024"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 691
    const/16 v0, 0x40

    goto/16 :goto_0

    .line 692
    :cond_3f
    const-string v0, "4032x2268"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 693
    const/16 v0, 0x41

    goto/16 :goto_0

    .line 694
    :cond_40
    const-string v0, "3024x3024"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 695
    const/16 v0, 0x43

    goto/16 :goto_0

    .line 696
    :cond_41
    const-string v0, "2160x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 697
    const/16 v0, 0x44

    goto/16 :goto_0

    .line 698
    :cond_42
    const-string v0, "1066x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 699
    const/16 v0, 0x45

    goto/16 :goto_0

    .line 700
    :cond_43
    const-string v0, "800x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 701
    const/16 v0, 0x46

    goto/16 :goto_0

    .line 703
    :cond_44
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 712
    packed-switch p0, :pswitch_data_0

    .line 851
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 714
    :pswitch_1
    const-string v0, "5312x2988"

    goto :goto_0

    .line 716
    :pswitch_2
    const-string v0, "4608x2592"

    goto :goto_0

    .line 718
    :pswitch_3
    const-string v0, "4128x3096"

    goto :goto_0

    .line 720
    :pswitch_4
    const-string v0, "3456x2592"

    goto :goto_0

    .line 722
    :pswitch_5
    const-string v0, "3096x3096"

    goto :goto_0

    .line 724
    :pswitch_6
    const-string v0, "4128x2322"

    goto :goto_0

    .line 726
    :pswitch_7
    const-string v0, "4096x3072"

    goto :goto_0

    .line 728
    :pswitch_8
    const-string v0, "4096x2304"

    goto :goto_0

    .line 730
    :pswitch_9
    const-string v0, "3984x2988"

    goto :goto_0

    .line 732
    :pswitch_a
    const-string v0, "3344x3344"

    goto :goto_0

    .line 734
    :pswitch_b
    const-string v0, "3264x2448"

    goto :goto_0

    .line 736
    :pswitch_c
    const-string v0, "3264x1968"

    goto :goto_0

    .line 738
    :pswitch_d
    const-string v0, "3264x1836"

    goto :goto_0

    .line 740
    :pswitch_e
    const-string v0, "3072x2304"

    goto :goto_0

    .line 742
    :pswitch_f
    const-string v0, "3072x1856"

    goto :goto_0

    .line 744
    :pswitch_10
    const-string v0, "2880x2160"

    goto :goto_0

    .line 746
    :pswitch_11
    const-string v0, "2976x2976"

    goto :goto_0

    .line 748
    :pswitch_12
    const-string v0, "2592x2592"

    goto :goto_0

    .line 750
    :pswitch_13
    const-string v0, "2592x1944"

    goto :goto_0

    .line 752
    :pswitch_14
    const-string v0, "2592x1458"

    goto :goto_0

    .line 754
    :pswitch_15
    const-string v0, "2576x1932"

    goto :goto_0

    .line 756
    :pswitch_16
    const-string v0, "2560x1920"

    goto :goto_0

    .line 758
    :pswitch_17
    const-string v0, "2560x1536"

    goto :goto_0

    .line 760
    :pswitch_18
    const-string v0, "2560x1440"

    goto :goto_0

    .line 762
    :pswitch_19
    const-string v0, "2048x1536"

    goto :goto_0

    .line 764
    :pswitch_1a
    const-string v0, "2048x1232"

    goto :goto_0

    .line 766
    :pswitch_1b
    const-string v0, "2048x1152"

    goto :goto_0

    .line 768
    :pswitch_1c
    const-string v0, "2048x1104"

    goto :goto_0

    .line 770
    :pswitch_1d
    const-string v0, "1920x1440"

    goto :goto_0

    .line 772
    :pswitch_1e
    const-string v0, "1936x1936"

    goto :goto_0

    .line 774
    :pswitch_1f
    const-string v0, "1920x1920"

    goto :goto_0

    .line 777
    :pswitch_20
    const-string v0, "1920x1080"

    goto :goto_0

    .line 779
    :pswitch_21
    const-string v0, "1632x880"

    goto :goto_0

    .line 781
    :pswitch_22
    const-string v0, "1600x1200"

    goto :goto_0

    .line 783
    :pswitch_23
    const-string v0, "1600x960"

    goto :goto_0

    .line 785
    :pswitch_24
    const-string v0, "1616x1212"

    goto :goto_0

    .line 787
    :pswitch_25
    const-string v0, "1600x900"

    goto :goto_0

    .line 789
    :pswitch_26
    const-string v0, "1536x864"

    goto :goto_0

    .line 791
    :pswitch_27
    const-string v0, "1392x1392"

    goto :goto_0

    .line 793
    :pswitch_28
    const-string v0, "1440x1080"

    goto :goto_0

    .line 795
    :pswitch_29
    const-string v0, "1440x1440"

    goto :goto_0

    .line 797
    :pswitch_2a
    const-string v0, "1280x960"

    goto :goto_0

    .line 799
    :pswitch_2b
    const-string v0, "1280x800"

    goto/16 :goto_0

    .line 801
    :pswitch_2c
    const-string v0, "960x540"

    goto/16 :goto_0

    .line 803
    :pswitch_2d
    const-string v0, "800x480"

    goto/16 :goto_0

    .line 805
    :pswitch_2e
    const-string v0, "800x450"

    goto/16 :goto_0

    .line 807
    :pswitch_2f
    const-string v0, "640x480"

    goto/16 :goto_0

    .line 809
    :pswitch_30
    const-string v0, "640x360"

    goto/16 :goto_0

    .line 811
    :pswitch_31
    const-string v0, "1248x672"

    goto/16 :goto_0

    .line 813
    :pswitch_32
    const-string v0, "1280x720"

    goto/16 :goto_0

    .line 815
    :pswitch_33
    const-string v0, "960x960"

    goto/16 :goto_0

    .line 817
    :pswitch_34
    const-string v0, "960x720"

    goto/16 :goto_0

    .line 819
    :pswitch_35
    const-string v0, "720x480"

    goto/16 :goto_0

    .line 821
    :pswitch_36
    const-string v0, "400x240"

    goto/16 :goto_0

    .line 823
    :pswitch_37
    const-string v0, "320x240"

    goto/16 :goto_0

    .line 825
    :pswitch_38
    const-string v0, "176x144"

    goto/16 :goto_0

    .line 827
    :pswitch_39
    const-string v0, "1024x768"

    goto/16 :goto_0

    .line 829
    :pswitch_3a
    const-string v0, "1024x576"

    goto/16 :goto_0

    .line 831
    :pswitch_3b
    const-string v0, "3840x2160"

    goto/16 :goto_0

    .line 833
    :pswitch_3c
    const-string v0, "1072x1072"

    goto/16 :goto_0

    .line 835
    :pswitch_3d
    const-string v0, "2448x2448"

    goto/16 :goto_0

    .line 837
    :pswitch_3e
    const-string v0, "1088x1088"

    goto/16 :goto_0

    .line 839
    :pswitch_3f
    const-string v0, "4032x3024"

    goto/16 :goto_0

    .line 841
    :pswitch_40
    const-string v0, "4032x2268"

    goto/16 :goto_0

    .line 843
    :pswitch_41
    const-string v0, "3024x3024"

    goto/16 :goto_0

    .line 845
    :pswitch_42
    const-string v0, "2160x2160"

    goto/16 :goto_0

    .line 847
    :pswitch_43
    const-string v0, "1066x800"

    goto/16 :goto_0

    .line 849
    :pswitch_44
    const-string v0, "800x800"

    goto/16 :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_22
        :pswitch_23
        :pswitch_2a
        :pswitch_2f
        :pswitch_2d
        :pswitch_20
        :pswitch_32
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_d
        :pswitch_18
        :pswitch_2b
        :pswitch_1b
        :pswitch_27
        :pswitch_13
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_31
        :pswitch_7
        :pswitch_28
        :pswitch_3
        :pswitch_6
        :pswitch_34
        :pswitch_2e
        :pswitch_8
        :pswitch_39
        :pswitch_2c
        :pswitch_3a
        :pswitch_3b
        :pswitch_30
        :pswitch_20
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_11
        :pswitch_3c
        :pswitch_3d
        :pswitch_2
        :pswitch_4
        :pswitch_12
        :pswitch_29
        :pswitch_1d
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_a
        :pswitch_1e
        :pswitch_1f
        :pswitch_3e
        :pswitch_15
        :pswitch_33
        :pswitch_0
        :pswitch_3f
        :pswitch_40
        :pswitch_10
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeId"    # I

    .prologue
    .line 708
    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 856
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const v0, 0x7f08025d

    .line 864
    sparse-switch p1, :sswitch_data_0

    .line 884
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 866
    :sswitch_0
    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 868
    :sswitch_1
    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 870
    :sswitch_2
    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 872
    :sswitch_3
    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 874
    :sswitch_4
    const v0, 0x7f08025c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 876
    :sswitch_5
    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 878
    :sswitch_6
    const v0, 0x7f080263

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 880
    :sswitch_7
    const v0, 0x7f080261

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 882
    :sswitch_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 864
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x34 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isNormalResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 889
    sparse-switch p0, :sswitch_data_0

    .line 912
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 910
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 889
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x12 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2d -> :sswitch_0
        0x32 -> :sswitch_0
        0x35 -> :sswitch_0
        0x3d -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSquareResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 917
    packed-switch p0, :pswitch_data_0

    .line 933
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 931
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 938
    packed-switch p0, :pswitch_data_0

    .line 971
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 969
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
