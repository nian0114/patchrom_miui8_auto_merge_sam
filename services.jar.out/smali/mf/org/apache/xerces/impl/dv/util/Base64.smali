.class public final Lmf/org/apache/xerces/impl/dv/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXBIT:I = 0x6

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 50
    new-array v2, v8, [B

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    .line 51
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 58
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v0, v2, :cond_1

    .line 61
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v0, v2, :cond_2

    .line 65
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v0, v2, :cond_3

    .line 69
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 70
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 72
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-le v0, v2, :cond_4

    .line 75
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-le v0, v2, :cond_5

    .line 78
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-le v0, v2, :cond_6

    .line 80
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    .line 81
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    .line 83
    return-void

    .line 56
    .end local v1    # "j":I
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 62
    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 66
    :cond_3
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 73
    :cond_4
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 76
    .restart local v1    # "j":I
    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 79
    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 25
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    const/16 v21, 0x0

    .line 283
    :goto_0
    return-object v21

    .line 203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 205
    .local v8, "base64Data":[C
    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/util/Base64;->removeWhiteSpace([C)I

    move-result v19

    .line 207
    .local v19, "len":I
    rem-int/lit8 v22, v19, 0x4

    if-eqz v22, :cond_1

    .line 208
    const/16 v21, 0x0

    goto :goto_0

    .line 211
    :cond_1
    div-int/lit8 v20, v19, 0x4

    .line 213
    .local v20, "numberQuadruple":I
    if-nez v20, :cond_2

    .line 214
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    goto :goto_0

    .line 216
    :cond_2
    const/4 v15, 0x0

    .line 217
    .local v15, "decodedData":[B
    const/4 v4, 0x0

    .local v4, "b1":B
    const/4 v5, 0x0

    .local v5, "b2":B
    const/4 v6, 0x0

    .local v6, "b3":B
    const/4 v7, 0x0

    .line 218
    .local v7, "b4":B
    const/4 v9, 0x0

    .local v9, "d1":C
    const/4 v10, 0x0

    .local v10, "d2":C
    const/4 v11, 0x0

    .local v11, "d3":C
    const/4 v12, 0x0

    .line 220
    .local v12, "d4":C
    const/16 v18, 0x0

    .line 221
    .local v18, "i":I
    const/16 v16, 0x0

    .line 222
    .local v16, "encodedIndex":I
    const/4 v13, 0x0

    .line 223
    .local v13, "dataIndex":I
    mul-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    new-array v15, v0, [B

    move v14, v13

    .end local v13    # "dataIndex":I
    .local v14, "dataIndex":I
    move/from16 v17, v16

    .line 225
    .end local v16    # "encodedIndex":I
    .local v17, "encodedIndex":I
    :goto_1
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 243
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 244
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_8

    move v13, v14

    .line 245
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_3
    const/16 v21, 0x0

    goto :goto_0

    .line 227
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_4
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v9, v8, v14

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 228
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v10, v8, v13

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 229
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 230
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    invoke-static {v12}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_5
    move v13, v14

    .line 231
    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    :cond_6
    const/16 v21, 0x0

    goto :goto_0

    .line 233
    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    :cond_7
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 234
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 235
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 236
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 238
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 239
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 240
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 225
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    goto/16 :goto_1

    .line 248
    :cond_8
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v4, v22, v9

    .line 249
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v5, v22, v10

    .line 251
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "dataIndex":I
    .restart local v13    # "dataIndex":I
    aget-char v11, v8, v14

    .line 252
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "dataIndex":I
    .restart local v14    # "dataIndex":I
    aget-char v12, v8, v13

    .line 253
    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 254
    invoke-static {v12}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v22

    if-nez v22, :cond_e

    .line 255
    :cond_9
    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-static {v12}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 256
    and-int/lit8 v22, v5, 0xf

    if-eqz v22, :cond_a

    .line 257
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 258
    :cond_a
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 259
    .local v21, "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    goto/16 :goto_0

    .line 262
    .end local v21    # "tmp":[B
    :cond_b
    invoke-static {v11}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-static {v12}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 263
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 264
    and-int/lit8 v22, v6, 0x3

    if-eqz v22, :cond_c

    .line 265
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 266
    :cond_c
    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 267
    .restart local v21    # "tmp":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    mul-int/lit8 v24, v18, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v17

    .line 269
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v16

    goto/16 :goto_0

    .line 272
    .end local v16    # "encodedIndex":I
    .end local v21    # "tmp":[B
    .restart local v17    # "encodedIndex":I
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 275
    :cond_e
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v6, v22, v11

    .line 276
    sget-object v22, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v7, v22, v12

    .line 277
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v4, 0x2

    shr-int/lit8 v23, v5, 0x4

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    .line 278
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "encodedIndex":I
    .restart local v17    # "encodedIndex":I
    and-int/lit8 v22, v5, 0xf

    shl-int/lit8 v22, v22, 0x4

    shr-int/lit8 v23, v6, 0x2

    and-int/lit8 v23, v23, 0xf

    or-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v16

    .line 279
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "encodedIndex":I
    .restart local v16    # "encodedIndex":I
    shl-int/lit8 v22, v6, 0x6

    or-int v22, v22, v7

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v15, v17

    move-object/from16 v21, v15

    .line 283
    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 21
    .param p0, "binaryData"    # [B

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/16 v19, 0x0

    .line 189
    :goto_0
    return-object v19

    .line 112
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x8

    .line 113
    .local v13, "lengthDataBits":I
    if-nez v13, :cond_1

    .line 114
    const-string v19, ""

    goto :goto_0

    .line 117
    :cond_1
    rem-int/lit8 v9, v13, 0x18

    .line 118
    .local v9, "fewerThan24bits":I
    div-int/lit8 v15, v13, 0x18

    .line 119
    .local v15, "numberTriplets":I
    if-eqz v9, :cond_2

    add-int/lit8 v14, v15, 0x1

    .line 120
    .local v14, "numberQuartet":I
    :goto_1
    const/4 v6, 0x0

    .line 122
    .local v6, "encodedData":[C
    mul-int/lit8 v19, v14, 0x4

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 124
    const/4 v11, 0x0

    .local v11, "k":B
    const/4 v12, 0x0

    .local v12, "l":B
    const/4 v1, 0x0

    .local v1, "b1":B
    const/4 v2, 0x0

    .local v2, "b2":B
    const/4 v3, 0x0

    .line 126
    .local v3, "b3":B
    const/4 v7, 0x0

    .line 127
    .local v7, "encodedIndex":I
    const/4 v4, 0x0

    .line 132
    .local v4, "dataIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    move v5, v4

    .end local v4    # "dataIndex":I
    .local v5, "dataIndex":I
    move v8, v7

    .end local v7    # "encodedIndex":I
    .local v8, "encodedIndex":I
    :goto_2
    if-lt v10, v15, :cond_3

    .line 162
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    .line 163
    aget-byte v1, p0, v5

    .line 164
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 169
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_7

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 170
    .local v16, "val1":B
    :goto_3
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 171
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 172
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v8

    .line 173
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    move v7, v8

    .line 189
    .end local v8    # "encodedIndex":I
    .end local v16    # "val1":B
    .restart local v7    # "encodedIndex":I
    :goto_4
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v5    # "dataIndex":I
    .end local v6    # "encodedData":[C
    .end local v7    # "encodedIndex":I
    .end local v10    # "i":I
    .end local v11    # "k":B
    .end local v12    # "l":B
    .end local v14    # "numberQuartet":I
    :cond_2
    move v14, v15

    .line 119
    goto :goto_1

    .line 133
    .restart local v1    # "b1":B
    .restart local v2    # "b2":B
    .restart local v3    # "b3":B
    .restart local v5    # "dataIndex":I
    .restart local v6    # "encodedData":[C
    .restart local v8    # "encodedIndex":I
    .restart local v10    # "i":I
    .restart local v11    # "k":B
    .restart local v12    # "l":B
    .restart local v14    # "numberQuartet":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v1, p0, v5

    .line 134
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    aget-byte v2, p0, v4

    .line 135
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    aget-byte v3, p0, v5

    .line 141
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 142
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 144
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_4

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 146
    .restart local v16    # "val1":B
    :goto_5
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_5

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 147
    .local v17, "val2":B
    :goto_6
    and-int/lit8 v19, v3, -0x80

    if-nez v19, :cond_6

    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 155
    .local v18, "val3":B
    :goto_7
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 156
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 157
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    or-int v20, v20, v18

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 158
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v20, v3, 0x3f

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 132
    add-int/lit8 v10, v10, 0x1

    move v5, v4

    .end local v4    # "dataIndex":I
    .restart local v5    # "dataIndex":I
    goto/16 :goto_2

    .line 144
    .end local v5    # "dataIndex":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .end local v18    # "val3":B
    .restart local v4    # "dataIndex":I
    :cond_4
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_5

    .line 146
    .restart local v16    # "val1":B
    :cond_5
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_6

    .line 147
    .restart local v17    # "val2":B
    :cond_6
    shr-int/lit8 v19, v3, 0x6

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_7

    .line 169
    .end local v4    # "dataIndex":I
    .end local v16    # "val1":B
    .end local v17    # "val2":B
    .restart local v5    # "dataIndex":I
    :cond_7
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto/16 :goto_3

    .line 174
    :cond_8
    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 175
    aget-byte v1, p0, v5

    .line 176
    add-int/lit8 v19, v5, 0x1

    aget-byte v2, p0, v19

    .line 177
    and-int/lit8 v19, v2, 0xf

    move/from16 v0, v19

    int-to-byte v12, v0

    .line 178
    and-int/lit8 v19, v1, 0x3

    move/from16 v0, v19

    int-to-byte v11, v0

    .line 180
    and-int/lit8 v19, v1, -0x80

    if-nez v19, :cond_a

    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 181
    .restart local v16    # "val1":B
    :goto_8
    and-int/lit8 v19, v2, -0x80

    if-nez v19, :cond_b

    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 183
    .restart local v17    # "val2":B
    :goto_9
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v19, v19, v16

    aput-char v19, v6, v8

    .line 184
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v11, 0x4

    or-int v20, v20, v17

    aget-char v19, v19, v20

    aput-char v19, v6, v7

    .line 185
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    sget-object v19, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v20, v12, 0x2

    aget-char v19, v19, v20

    aput-char v19, v6, v8

    .line 186
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    const/16 v19, 0x3d

    aput-char v19, v6, v7

    .end local v16    # "val1":B
    .end local v17    # "val2":B
    :cond_9
    move v7, v8

    .end local v8    # "encodedIndex":I
    .restart local v7    # "encodedIndex":I
    goto/16 :goto_4

    .line 180
    .end local v7    # "encodedIndex":I
    .restart local v8    # "encodedIndex":I
    :cond_a
    shr-int/lit8 v19, v1, 0x2

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_8

    .line 181
    .restart local v16    # "val1":B
    :cond_b
    shr-int/lit8 v19, v2, 0x4

    move/from16 v0, v19

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_9
.end method

.method protected static isBase64(C)Z
    .locals 1
    .param p0, "octect"    # C

    .prologue
    .line 98
    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isData(C)Z
    .locals 2
    .param p0, "octect"    # C

    .prologue
    .line 94
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPad(C)Z
    .locals 1
    .param p0, "octect"    # C

    .prologue
    .line 90
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isWhiteSpace(C)Z
    .locals 1
    .param p0, "octect"    # C

    .prologue
    .line 86
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static removeWhiteSpace([C)I
    .locals 5
    .param p0, "data"    # [C

    .prologue
    .line 293
    if-nez p0, :cond_1

    .line 294
    const/4 v3, 0x0

    .line 303
    :cond_0
    return v3

    .line 297
    :cond_1
    const/4 v2, 0x0

    .line 298
    .local v2, "newSize":I
    array-length v1, p0

    .line 299
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "newSize":I
    .local v3, "newSize":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 300
    aget-char v4, p0, v0

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    aget-char v4, p0, v0

    aput-char v4, p0, v3

    .line 299
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "newSize":I
    .restart local v3    # "newSize":I
    goto :goto_0

    :cond_2
    move v2, v3

    .end local v3    # "newSize":I
    .restart local v2    # "newSize":I
    goto :goto_1
.end method
