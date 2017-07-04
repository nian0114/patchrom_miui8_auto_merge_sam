.class public Lmf/org/apache/xml/serialize/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;,
        Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;
    }
.end annotation


# instance fields
.field private fArgsForMethod:[Ljava/lang/Object;

.field fCharToByteConverter:Ljava/lang/Object;

.field fCharsetEncoder:Ljava/lang/Object;

.field fHaveTriedCToB:Z

.field fHaveTriedCharsetEncoder:Z

.field ianaName:Ljava/lang/String;

.field javaName:Ljava/lang/String;

.field lastPrintable:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ianaName"    # Ljava/lang/String;
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "lastPrintable"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    .line 56
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    .line 59
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    .line 65
    iput-object p1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    .line 67
    iput p3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    .line 68
    return-void
.end method

.method private isPrintable0(C)Z
    .locals 8
    .param p1, "ch"    # C

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 119
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-nez v2, :cond_1

    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    if-nez v2, :cond_1

    .line 120
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 121
    new-array v2, v7, [Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    .line 125
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 126
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "charset":Ljava/lang/Object;
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$3()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "charset":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 143
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v2, v4

    .line 144
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$4()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 184
    :goto_1
    return v2

    .line 132
    .restart local v0    # "charset":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "charset":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/lang/Exception;
    iput-object v6, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    .line 149
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 157
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    if-nez v2, :cond_4

    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$0()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v3

    .line 159
    goto :goto_1

    .line 161
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 162
    new-array v2, v7, [Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    .line 166
    :cond_6
    :try_start_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 167
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    :cond_7
    :try_start_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v2, v4

    .line 177
    # getter for: Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    goto :goto_1

    .line 169
    :catch_2
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/lang/Exception;
    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    move v2, v3

    .line 172
    goto :goto_1

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/lang/Exception;
    iput-object v6, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    .line 183
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    move v2, v3

    .line 184
    goto :goto_1
.end method

.method public static testJavaEncodingName(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v2, 0x5

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 192
    .local v0, "bTest":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 193
    .local v1, "s":Ljava/lang/String;
    return-void

    .line 191
    :array_0
    .array-data 1
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
    .end array-data
.end method


# virtual methods
.method public getIANAName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPrintable(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 103
    iget v0, p0, Lmf/org/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    if-gt p1, v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable0(C)Z

    move-result v0

    goto :goto_0
.end method
