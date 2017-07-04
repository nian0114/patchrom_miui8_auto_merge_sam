.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field private static final RSRP_THRESH_CHINA:[I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 57
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 59
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_CHINA:[I

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 481
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 67
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 68
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data

    .line 70
    :array_2
    .array-data 4
        -0x8c
        -0x7b
        -0x76
        -0x72
        -0x69
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 165
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 166
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 167
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 168
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 169
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 170
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 171
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 172
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 173
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 174
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 175
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 176
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 181
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 221
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 224
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 225
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 269
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 272
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 273
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 274
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 240
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 256
    iput p14, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 257
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 417
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 193
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 194
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 195
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 196
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 197
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 198
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 199
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 200
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 201
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 202
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 203
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 204
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 205
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 209
    return-void
.end method

.method private static InitializeSignalBins()I
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x5

    .line 120
    .local v0, "maxRSSI":I
    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x6

    .line 124
    :cond_1
    return v0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    const-string v2, "1"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v1, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v1, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v1, v7

    const-string v2, "good"

    aput-object v2, v1, v8

    const-string v2, "great"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "excellent"

    aput-object v3, v1, v2

    .local v1, "vzwName":[Ljava/lang/String;
    move-object v0, v1

    .line 134
    .end local v1    # "vzwName":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v0, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v7

    const-string v2, "good"

    aput-object v2, v0, v8

    const-string v2, "great"

    aput-object v2, v0, v9

    .line 134
    .local v0, "defaultName":[Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1449
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 429
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 430
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 431
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 432
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 433
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 434
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 435
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 436
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 437
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 438
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 439
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 440
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 441
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 442
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 443
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 113
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1400
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1401
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1402
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1403
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1404
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1405
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1406
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1407
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1408
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1409
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1410
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1411
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1412
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1413
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1415
    const-string v0, "SignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 1417
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 373
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 374
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 375
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 376
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 377
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 378
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 379
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 380
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 381
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 382
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 383
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 384
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 385
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 386
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 388
    iget v0, p1, Landroid/telephony/SignalStrength;->mSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 390
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1340
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1349
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1341
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1349
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1426
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1433
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1434
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1435
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1438
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1441
    const-string v0, "SignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1443
    return-void
.end method

.method public getAlternateLteLevel()I
    .locals 3

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_1

    const/4 v0, -0x1

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 674
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 675
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 676
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_3

    .line 790
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 792
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 793
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 795
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 801
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 802
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 803
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 805
    move v0, v1

    goto :goto_0

    .line 806
    :cond_4
    if-nez v1, :cond_5

    .line 808
    move v0, v2

    goto :goto_0

    .line 811
    :cond_5
    if-ge v1, v2, :cond_7

    move v0, v1

    .line 813
    :goto_1
    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "VZW-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 814
    move v0, v2

    .line 816
    :cond_6
    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "USC-USC-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 811
    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1003
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1004
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1008
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1016
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1023
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1025
    .local v4, "level":I
    :goto_2
    return v4

    .line 1009
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1010
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1011
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1012
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1013
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1017
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1018
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1019
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1020
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1021
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1023
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 9

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5f

    .line 946
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 947
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 951
    .local v1, "cdmaEcio":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 955
    :cond_0
    if-lt v0, v8, :cond_6

    const/4 v3, 0x4

    .line 970
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_f

    const/4 v4, 0x4

    .line 976
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_13

    move v2, v3

    .line 977
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 981
    :cond_1
    if-le v3, v4, :cond_14

    move v2, v3

    .line 985
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 990
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 994
    :cond_5
    return v2

    .line 956
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_6
    if-lt v0, v7, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 957
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x66

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 958
    .end local v3    # "levelDbm":I
    :cond_8
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 959
    .end local v3    # "levelDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 962
    .end local v3    # "levelDbm":I
    :cond_a
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_b

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto/16 :goto_0

    .line 963
    .end local v3    # "levelDbm":I
    :cond_b
    if-lt v0, v8, :cond_c

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto/16 :goto_0

    .line 964
    .end local v3    # "levelDbm":I
    :cond_c
    if-lt v0, v7, :cond_d

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto/16 :goto_0

    .line 965
    .end local v3    # "levelDbm":I
    :cond_d
    const/16 v5, -0x64

    if-lt v0, v5, :cond_e

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto/16 :goto_0

    .line 966
    .end local v3    # "levelDbm":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto/16 :goto_0

    .line 971
    :cond_f
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_10

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 972
    .end local v4    # "levelEcio":I
    :cond_10
    const/16 v5, -0x82

    if-lt v1, v5, :cond_11

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 973
    .end local v4    # "levelEcio":I
    :cond_11
    const/16 v5, -0x96

    if-lt v1, v5, :cond_12

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 974
    .end local v4    # "levelEcio":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    :cond_13
    move v2, v4

    .line 976
    goto/16 :goto_2

    .restart local v2    # "level":I
    :cond_14
    move v2, v4

    .line 981
    goto/16 :goto_3
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x78

    .line 835
    const v1, 0x7fffffff

    .line 837
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 838
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 839
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 841
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :cond_0
    :goto_0
    move v0, v1

    .line 865
    :cond_1
    :goto_1
    return v0

    .line 843
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 848
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 850
    .local v2, "evdoDbm":I
    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "VZW-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    if-eq v2, v5, :cond_1

    move v0, v2

    goto :goto_1

    .line 853
    :cond_4
    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "USC-USC-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 857
    if-ne v0, v5, :cond_5

    .end local v2    # "evdoDbm":I
    :goto_2
    move v0, v2

    goto :goto_1

    .restart local v2    # "evdoDbm":I
    :cond_5
    move v2, v0

    goto :goto_2

    .line 861
    :cond_6
    if-eq v2, v5, :cond_1

    if-ne v0, v5, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    if-lt v0, v2, :cond_1

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1090
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1091
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1095
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1102
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1109
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1111
    .local v2, "level":I
    :goto_2
    return v2

    .line 1096
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1097
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1098
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1099
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1100
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1103
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1104
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1105
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1106
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1107
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1109
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1035
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1039
    .local v1, "evdoSnr":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1043
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .line 1057
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_f

    const/4 v4, 0x4

    .line 1063
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_13

    move v2, v3

    .line 1064
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1068
    :cond_1
    if-le v3, v4, :cond_14

    move v2, v3

    .line 1072
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1077
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf00

    shr-int/lit8 v2, v5, 0x8

    .line 1081
    :cond_5
    return v2

    .line 1044
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1045
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x66

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1046
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1047
    .end local v3    # "levelEvdoDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1050
    .end local v3    # "levelEvdoDbm":I
    :cond_a
    const/16 v5, -0x41

    if-lt v0, v5, :cond_b

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1051
    .end local v3    # "levelEvdoDbm":I
    :cond_b
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_c

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1052
    .end local v3    # "levelEvdoDbm":I
    :cond_c
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_d

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1053
    .end local v3    # "levelEvdoDbm":I
    :cond_d
    const/16 v5, -0x69

    if-lt v0, v5, :cond_e

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1054
    .end local v3    # "levelEvdoDbm":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_0

    .line 1058
    :cond_f
    const/4 v5, 0x5

    if-lt v1, v5, :cond_10

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1059
    .end local v4    # "levelEvdoSnr":I
    :cond_10
    const/4 v5, 0x3

    if-lt v1, v5, :cond_11

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1060
    .end local v4    # "levelEvdoSnr":I
    :cond_11
    const/4 v5, 0x1

    if-lt v1, v5, :cond_12

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1061
    .end local v4    # "levelEvdoSnr":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    :cond_13
    move v2, v4

    .line 1063
    goto/16 :goto_2

    .restart local v2    # "level":I
    :cond_14
    move v2, v4

    .line 1068
    goto/16 :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 937
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 876
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 877
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 878
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 879
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 884
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 877
    goto :goto_0

    .line 881
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 900
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 906
    .local v1, "level":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 907
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 912
    :cond_1
    return v1

    .line 901
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0xc

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 902
    .end local v1    # "level":I
    :cond_3
    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 903
    .end local v1    # "level":I
    :cond_4
    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 904
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalBar()I
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 691
    const/4 v4, 0x0

    .line 693
    .local v4, "level":I
    iget-boolean v5, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v5, :cond_5

    .line 694
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v4

    .line 695
    if-nez v4, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v4

    .line 697
    if-nez v4, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v4

    .line 701
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "displayCdmaLevel":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 706
    const/4 v2, 0x1

    .line 708
    :cond_1
    const-string v5, "gsm.current.phone-type"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 709
    .local v1, "currentPhone":I
    if-ne v1, v7, :cond_2

    if-nez v4, :cond_2

    .line 710
    const/4 v2, 0x1

    .line 713
    :cond_2
    if-eqz v2, :cond_3

    .line 714
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    .line 752
    .end local v1    # "currentPhone":I
    .end local v2    # "displayCdmaLevel":Z
    :cond_3
    :goto_0
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v4, v5, :cond_4

    .line 753
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v4, v5, -0x1

    .line 757
    :cond_4
    return v4

    .line 718
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 719
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v3

    .line 720
    .local v3, "evdoLevel":I
    if-nez v3, :cond_7

    .line 722
    move v4, v0

    .line 745
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 747
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v4

    goto :goto_0

    .line 723
    :cond_7
    if-nez v0, :cond_8

    .line 725
    move v4, v3

    goto :goto_1

    .line 727
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 728
    move v4, v0

    .line 734
    :goto_2
    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_9

    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 735
    move v4, v3

    .line 737
    :cond_9
    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "USC-USC-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 741
    move v4, v0

    goto :goto_1

    .line 731
    :cond_a
    if-ge v0, v3, :cond_b

    move v4, v0

    :goto_3
    goto :goto_2

    :cond_b
    move v4, v3

    goto :goto_3
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1232
    const/16 v0, 0x63

    .line 1233
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1247
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1250
    :goto_0
    return v0

    .line 1248
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 11

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xa

    const/16 v8, -0x1e

    const/16 v7, -0xc8

    .line 1135
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1137
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1140
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_6

    .line 1141
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1146
    .local v4, "threshRsrp":[I
    :goto_0
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1147
    :cond_0
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_CHINA:[I

    .line 1150
    :cond_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x5

    aget v6, v4, v6

    if-le v5, v6, :cond_7

    const/4 v0, -0x1

    .line 1163
    :cond_2
    :goto_1
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1164
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v5, v10, :cond_c

    const/4 v3, -0x1

    .line 1185
    :cond_4
    :goto_2
    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_17

    sget-object v5, Landroid/telephony/SignalStrength;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "USC-USC-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1187
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v0, v5, 0x4

    .line 1193
    :cond_5
    :goto_3
    return v0

    .line 1143
    .end local v4    # "threshRsrp":[I
    :cond_6
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_0

    .line 1151
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_8

    const/4 v0, 0x4

    goto :goto_1

    .line 1152
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x3

    aget v6, v4, v6

    if-lt v5, v6, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 1153
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x2

    aget v6, v4, v6

    if-lt v5, v6, :cond_a

    const/4 v0, 0x2

    goto :goto_1

    .line 1154
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-lt v5, v6, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    .line 1155
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-lt v5, v6, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 1165
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x5a

    if-lt v5, v6, :cond_d

    const/4 v3, 0x4

    goto :goto_2

    .line 1166
    :cond_d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_e

    const/4 v3, 0x3

    goto :goto_2

    .line 1167
    :cond_e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v8, :cond_f

    const/4 v3, 0x2

    goto :goto_2

    .line 1168
    :cond_f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x32

    if-lt v5, v6, :cond_10

    const/4 v3, 0x1

    goto :goto_2

    .line 1169
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v7, :cond_4

    .line 1170
    const/4 v3, 0x0

    goto :goto_2

    .line 1172
    :cond_11
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v5, v10, :cond_12

    const/4 v3, -0x1

    goto :goto_2

    .line 1173
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_13

    const/4 v3, 0x4

    goto :goto_2

    .line 1174
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_14

    const/4 v3, 0x3

    goto :goto_2

    .line 1175
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_15

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 1176
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v8, :cond_16

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1177
    :cond_16
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v7, :cond_4

    .line 1178
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1190
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1191
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    const v6, 0xf000

    and-int/2addr v5, v6

    shr-int/lit8 v0, v5, 0xc

    goto/16 :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getSglteGsmLevel()I
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public getSglteRssiDisplayNum()I
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalBar()I
    .locals 3

    .prologue
    .line 767
    const-string/jumbo v1, "ril.dbg.SignalBar"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 768
    .local v0, "dbgBar":I
    if-lez v0, :cond_0

    .line 769
    .end local v0    # "dbgBar":I
    :goto_0
    return v0

    .restart local v0    # "dbgBar":I
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1305
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1308
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1311
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1309
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1266
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    .prologue
    .line 1278
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1281
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 1282
    :cond_0
    const/4 v0, 0x0

    .line 1289
    .local v0, "level":I
    :goto_0
    if-eqz v0, :cond_1

    .line 1291
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1292
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1296
    :cond_1
    return v0

    .line 1283
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x58

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1284
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x5c

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1285
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x61

    if-lt v1, v2, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1286
    .end local v0    # "level":I
    :cond_5
    const/16 v2, -0x66

    if-lt v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1287
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1319
    const/16 v0, 0x1f

    .line 1320
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 349
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 350
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 351
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 352
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 353
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 354
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 355
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 356
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 357
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 358
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 359
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 360
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 361
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 362
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 367
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 320
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 323
    return-void
.end method

.method public isCdmaRatOnAllRatSupport()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    const-string v2, "5"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 154
    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 557
    return-void
.end method

.method public setSignalBars()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public setSignalBarsLTE()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public setSignalBarsLTE(IIZ)V
    .locals 0
    .param p1, "rilRadioTechnology"    # I
    .param p2, "ssRilRadioTechnology"    # I
    .param p3, "isVolteSupported"    # Z

    .prologue
    .line 660
    return-void
.end method

.method public setSignalBarsVolte(Z)V
    .locals 0
    .param p1, "isVolteSupported"    # Z

    .prologue
    .line 653
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v2, -0x78

    const/16 v1, 0x63

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v0, v3, :cond_5

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 512
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 521
    :cond_0
    :goto_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 525
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 529
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_2
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 533
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 535
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 538
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_4
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 545
    return-void

    .line 514
    :cond_5
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const v5, 0xffff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 515
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 521
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 524
    goto/16 :goto_2

    .line 525
    :cond_8
    const/16 v0, -0xa0

    goto/16 :goto_3

    :cond_9
    move v0, v3

    .line 528
    goto/16 :goto_4

    :cond_a
    move v0, v4

    .line 533
    goto :goto_5

    :cond_b
    move v0, v4

    .line 534
    goto :goto_6

    :cond_c
    move v0, v4

    .line 535
    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
