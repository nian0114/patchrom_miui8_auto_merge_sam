.class public Lcom/samsung/android/glview/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final EPSILON:D = 9.999999747378752E-6


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static calculateSampleSize(II)I
    .locals 1
    .param p0, "src"    # I
    .param p1, "target"    # I

    .prologue
    .line 55
    if-lt p0, p1, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_1
    div-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 83
    if-le p0, p2, :cond_0

    .line 87
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 85
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 86
    goto :goto_0

    :cond_1
    move p2, p0

    .line 87
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v19, "("

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 122
    const/16 v19, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    const-string v19, "[0-5][0-9]:[0-5][0-9]:[0-5][0-9]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "[0-5][0-9]:[0-5][0-9]:[0-5][0-9] / [0-5][0-9]:[0-5][0-9]:[0-5][0-9]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 130
    :cond_1
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "Hr":Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "Min":Ljava/lang/String;
    const/16 v19, 0x6

    const/16 v20, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "Sec":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "hour":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 139
    .local v11, "minute":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 141
    .local v14, "second":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_3

    sget v19, Lcom/samsung/android/glview/R$string;->tts_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, "ttsHr":Ljava/lang/String;
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_4

    sget v19, Lcom/samsung/android/glview/R$string;->tts_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 143
    .local v17, "ttsMin":Ljava/lang/String;
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_5

    sget v19, Lcom/samsung/android/glview/R$string;->tts_seconds:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, "ttsSec":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "convertedText":Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 152
    const/16 v19, 0xb

    const/16 v20, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "hrMax":Ljava/lang/String;
    const/16 v19, 0xe

    const/16 v20, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "minMax":Ljava/lang/String;
    const/16 v19, 0x11

    const/16 v20, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "secMax":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 157
    .local v8, "hourMax":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 158
    .local v12, "minuteMax":I
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 160
    .local v15, "secondMax":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v12, v0, :cond_6

    sget v19, Lcom/samsung/android/glview/R$string;->tts_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 161
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v12, v0, :cond_7

    sget v19, Lcom/samsung/android/glview/R$string;->tts_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 162
    :goto_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_8

    sget v19, Lcom/samsung/android/glview/R$string;->tts_seconds:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 165
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    .end local v3    # "Hr":Ljava/lang/String;
    .end local v7    # "hour":I
    .end local v8    # "hourMax":I
    .end local v9    # "hrMax":Ljava/lang/String;
    .end local v10    # "minMax":Ljava/lang/String;
    .end local v12    # "minuteMax":I
    .end local v13    # "secMax":Ljava/lang/String;
    .end local v15    # "secondMax":I
    .end local v16    # "ttsHr":Ljava/lang/String;
    :cond_2
    :goto_6
    return-object v6

    .line 141
    .end local v6    # "convertedText":Ljava/lang/String;
    .end local v17    # "ttsMin":Ljava/lang/String;
    .end local v18    # "ttsSec":Ljava/lang/String;
    .restart local v3    # "Hr":Ljava/lang/String;
    .restart local v7    # "hour":I
    :cond_3
    sget v19, Lcom/samsung/android/glview/R$string;->tts_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 142
    .restart local v16    # "ttsHr":Ljava/lang/String;
    :cond_4
    sget v19, Lcom/samsung/android/glview/R$string;->tts_minute:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 143
    .restart local v17    # "ttsMin":Ljava/lang/String;
    :cond_5
    sget v19, Lcom/samsung/android/glview/R$string;->tts_second:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 160
    .restart local v6    # "convertedText":Ljava/lang/String;
    .restart local v8    # "hourMax":I
    .restart local v9    # "hrMax":Ljava/lang/String;
    .restart local v10    # "minMax":Ljava/lang/String;
    .restart local v12    # "minuteMax":I
    .restart local v13    # "secMax":Ljava/lang/String;
    .restart local v15    # "secondMax":I
    .restart local v18    # "ttsSec":Ljava/lang/String;
    :cond_6
    sget v19, Lcom/samsung/android/glview/R$string;->tts_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 161
    :cond_7
    sget v19, Lcom/samsung/android/glview/R$string;->tts_minute:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 162
    :cond_8
    sget v19, Lcom/samsung/android/glview/R$string;->tts_second:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 169
    .end local v3    # "Hr":Ljava/lang/String;
    .end local v4    # "Min":Ljava/lang/String;
    .end local v5    # "Sec":Ljava/lang/String;
    .end local v6    # "convertedText":Ljava/lang/String;
    .end local v7    # "hour":I
    .end local v8    # "hourMax":I
    .end local v9    # "hrMax":Ljava/lang/String;
    .end local v10    # "minMax":Ljava/lang/String;
    .end local v11    # "minute":I
    .end local v12    # "minuteMax":I
    .end local v13    # "secMax":Ljava/lang/String;
    .end local v14    # "second":I
    .end local v15    # "secondMax":I
    .end local v16    # "ttsHr":Ljava/lang/String;
    .end local v17    # "ttsMin":Ljava/lang/String;
    .end local v18    # "ttsSec":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 170
    .restart local v4    # "Min":Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 175
    .restart local v5    # "Sec":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 176
    .restart local v11    # "minute":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 178
    .restart local v14    # "second":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_a

    sget v19, Lcom/samsung/android/glview/R$string;->tts_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 179
    .restart local v17    # "ttsMin":Ljava/lang/String;
    :goto_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_b

    sget v19, Lcom/samsung/android/glview/R$string;->tts_seconds:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 182
    .restart local v18    # "ttsSec":Ljava/lang/String;
    :goto_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .restart local v6    # "convertedText":Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 188
    const/16 v19, 0x8

    const/16 v20, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 189
    .restart local v10    # "minMax":Ljava/lang/String;
    const/16 v19, 0xb

    const/16 v20, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 191
    .restart local v13    # "secMax":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 192
    .restart local v12    # "minuteMax":I
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 194
    .restart local v15    # "secondMax":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v12, v0, :cond_c

    sget v19, Lcom/samsung/android/glview/R$string;->tts_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 195
    :goto_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_d

    sget v19, Lcom/samsung/android/glview/R$string;->tts_seconds:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 198
    :goto_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 178
    .end local v6    # "convertedText":Ljava/lang/String;
    .end local v10    # "minMax":Ljava/lang/String;
    .end local v12    # "minuteMax":I
    .end local v13    # "secMax":Ljava/lang/String;
    .end local v15    # "secondMax":I
    .end local v17    # "ttsMin":Ljava/lang/String;
    .end local v18    # "ttsSec":Ljava/lang/String;
    :cond_a
    sget v19, Lcom/samsung/android/glview/R$string;->tts_minute:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 179
    .restart local v17    # "ttsMin":Ljava/lang/String;
    :cond_b
    sget v19, Lcom/samsung/android/glview/R$string;->tts_second:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_8

    .line 194
    .restart local v6    # "convertedText":Ljava/lang/String;
    .restart local v10    # "minMax":Ljava/lang/String;
    .restart local v12    # "minuteMax":I
    .restart local v13    # "secMax":Ljava/lang/String;
    .restart local v15    # "secondMax":I
    .restart local v18    # "ttsSec":Ljava/lang/String;
    :cond_c
    sget v19, Lcom/samsung/android/glview/R$string;->tts_minute:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 195
    :cond_d
    sget v19, Lcom/samsung/android/glview/R$string;->tts_second:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_a
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 214
    sub-float v0, p0, p2

    .line 215
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 216
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static doubleEquals(DD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 220
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 231
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatEquals(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 235
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatEquals(FF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 239
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 249
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 251
    return-object v0
.end method

.method public static getAlphaOffAnimation(F)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "from"    # F

    .prologue
    .line 261
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 262
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 264
    return-object v0
.end method

.method public static getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 268
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 269
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 284
    return-object v0
.end method

.method public static getAlphaOnAnimation(F)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "to"    # F

    .prologue
    .line 288
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 289
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 291
    return-object v0
.end method

.method public static getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "offset"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 295
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 298
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 300
    return-object v0
.end method

.method public static getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 304
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 305
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 308
    return-object v0
.end method

.method public static getBlinkAnimation(Z)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "repeat"    # Z

    .prologue
    .line 312
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 313
    .local v0, "blinkAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 314
    if-eqz p0, :cond_0

    .line 315
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 316
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 318
    :cond_0
    return-object v0
.end method

.method public static getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 328
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    return-object v0
.end method

.method public static getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 341
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 342
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 343
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 344
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 345
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    return-object v0
.end method

.method public static getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V
    .locals 1
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "glCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 363
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 364
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 365
    return-void
.end method

.method public static getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "screenDistance"    # F

    .prologue
    .line 375
    return p1
.end method

.method public static getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "screenDistance"    # F

    .prologue
    .line 387
    return p1
.end method

.method public static getGLOrientationByDisplayOrientation(I)I
    .locals 5
    .param p0, "displayOrientation"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isScreenOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 416
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 397
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 399
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 401
    goto :goto_0

    .line 406
    :cond_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v3

    .line 408
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 412
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 414
    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getGLOrientationBySystemOrientation(I)I
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 428
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 442
    :goto_0
    return v1

    .line 431
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getOrientationCompensationValue()I

    move-result v2

    add-int/2addr v2, p0

    rem-int/lit16 v2, v2, 0x168

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->roundOrientation(I)I

    move-result v0

    .line 433
    .local v0, "degree":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 435
    :sswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 437
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 439
    :sswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getScreenCoordinateFromGLCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V
    .locals 1
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "screenCoordinate"    # [F
    .param p2, "glX"    # F
    .param p3, "glY"    # F

    .prologue
    .line 458
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 459
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 460
    return-void
.end method

.method public static getScreenDistanceFromGLDistanceX(Lcom/samsung/android/glview/GLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "glDistance"    # F

    .prologue
    .line 471
    return p1
.end method

.method public static getScreenDistanceFromGLDistanceY(Lcom/samsung/android/glview/GLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "glDistance"    # F

    .prologue
    .line 483
    return p1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "s":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 496
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 495
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isKNOXMode()Z
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 517
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTimeInfo(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 525
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 529
    :cond_0
    const-string v0, "[0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[0-5][0-9]:[0-5][0-9] / [0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[0-5][0-9]:[0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[0-5][0-9]:[0-5][0-9]:[0-5][0-9] / [0-5][0-9]:[0-5][0-9]:[0-5][0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    :cond_1
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static multiplyMM([F[F[F)V
    .locals 9
    .param p0, "result"    # [F
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 545
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    aget v0, p1, v4

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v4

    .line 550
    aget v0, p1, v5

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v5

    .line 551
    aget v0, p1, v6

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v6

    .line 552
    aget v0, p1, v7

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v7

    .line 554
    aget v0, p1, v4

    aget v1, p2, v8

    mul-float/2addr v0, v1

    aget v1, p1, v8

    const/4 v2, 0x5

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    .line 555
    const/4 v0, 0x5

    aget v1, p1, v5

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 556
    const/4 v0, 0x6

    aget v1, p1, v6

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 557
    const/4 v0, 0x7

    aget v1, p1, v7

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 559
    const/16 v0, 0x8

    aget v1, p1, v4

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 560
    const/16 v0, 0x9

    aget v1, p1, v5

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 561
    const/16 v0, 0xa

    aget v1, p1, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 562
    const/16 v0, 0xb

    aget v1, p1, v7

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 564
    const/16 v0, 0xc

    aget v1, p1, v4

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 565
    const/16 v0, 0xd

    aget v1, p1, v5

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 566
    const/16 v0, 0xe

    aget v1, p1, v6

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 567
    const/16 v0, 0xf

    aget v1, p1, v7

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    goto/16 :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 580
    add-int/lit8 p0, p0, -0x1

    .line 581
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 582
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 583
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 584
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 585
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 586
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 597
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 598
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 599
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 601
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 602
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 603
    const/4 p0, 0x0

    .line 604
    move-object p0, v7

    .line 610
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 606
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 621
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 643
    :cond_0
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    :goto_0
    return v0

    .line 623
    :pswitch_0
    const/16 v0, 0x131

    if-le v0, p0, :cond_1

    const/16 v0, 0x37

    if-ge p0, v0, :cond_0

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    :pswitch_1
    const/16 v0, 0x23

    if-gt v0, p0, :cond_0

    const/16 v0, 0x91

    if-ge p0, v0, :cond_0

    .line 629
    const/16 v0, 0x5a

    goto :goto_0

    .line 633
    :pswitch_2
    const/16 v0, 0x7d

    if-gt v0, p0, :cond_0

    const/16 v0, 0xeb

    if-ge p0, v0, :cond_0

    .line 634
    const/16 v0, 0xb4

    goto :goto_0

    .line 638
    :pswitch_3
    const/16 v0, 0xd7

    if-gt v0, p0, :cond_0

    const/16 v0, 0x145

    if-ge p0, v0, :cond_0

    .line 639
    const/16 v0, 0x10e

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toGLMatrix([F)[F
    .locals 7
    .param p0, "v"    # [F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 653
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    .line 654
    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    .line 655
    aget v0, p0, v5

    aput v0, p0, v6

    .line 656
    aget v0, p0, v2

    aput v0, p0, v5

    .line 657
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    .line 658
    aget v0, p0, v3

    aput v0, p0, v2

    .line 659
    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 660
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 661
    const/16 v0, 0xa

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 662
    return-object p0
.end method

.method public static transformEventByGLOrientation(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "glOrientation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 698
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    packed-switch p1, :pswitch_data_0

    .line 727
    :goto_0
    return-void

    .line 701
    :pswitch_0
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 704
    :pswitch_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 707
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 713
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 715
    :pswitch_3
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 718
    :pswitch_4
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 721
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 713
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "screenOrientation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 666
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    packed-switch p1, :pswitch_data_0

    .line 695
    :goto_0
    return-void

    .line 669
    :pswitch_0
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 672
    :pswitch_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 675
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 681
    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 683
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 686
    :pswitch_5
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 689
    :pswitch_6
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 681
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
