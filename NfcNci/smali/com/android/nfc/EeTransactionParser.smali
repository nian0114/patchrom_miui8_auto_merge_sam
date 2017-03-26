.class public Lcom/android/nfc/EeTransactionParser;
.super Ljava/lang/Object;
.source "EeTransactionParser.java"


# static fields
.field public static final EXTRA_SECURE_ELEMENT_TRANSACTION_PARAM:Ljava/lang/String; = "com.android.nfc.brcm.SECURE_ELEMENT_TRANSACTION_PARAM"

.field public static final TAG:Ljava/lang/String; = "EeTransactionParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(B[B)[B
    .locals 5
    .param p0, "targetType"    # B
    .param p1, "tlv"    # [B

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "index":I
    const/4 v2, 0x0

    .line 100
    .local v2, "ret":[B
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 101
    aget-byte v3, p1, v0

    .line 102
    .local v3, "tlvType":B
    add-int/lit8 v0, v0, 0x1

    .line 103
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v1, v4

    .line 104
    .local v1, "len":S
    add-int/lit8 v0, v0, 0x1

    .line 106
    const/16 v4, 0x81

    if-ne v1, v4, :cond_0

    .line 107
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-short v1, v4

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    if-ne v3, p0, :cond_2

    .line 111
    add-int v4, v0, v1

    invoke-static {p1, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 116
    .end local v1    # "len":S
    .end local v3    # "tlvType":B
    :cond_1
    return-object v2

    .line 114
    .restart local v1    # "len":S
    .restart local v3    # "tlvType":B
    :cond_2
    add-int/2addr v0, v1

    .line 115
    goto :goto_0
.end method

.method public static getAid([B)[B
    .locals 5
    .param p0, "tlv"    # [B

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "aid":[B
    const/16 v2, -0x40

    invoke-static {v2, p0}, Lcom/android/nfc/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string v2, "EeTransactionParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAid; found type 0xC0 (AID); len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 51
    .end local v0    # "aid":[B
    .local v1, "aid":[B
    :goto_0
    return-object v1

    .line 48
    .end local v1    # "aid":[B
    .restart local v0    # "aid":[B
    :cond_0
    const/16 v2, -0x7f

    invoke-static {v2, p0}, Lcom/android/nfc/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    const-string v2, "EeTransactionParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAid; found type 0x81 (AID); len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v0

    .line 51
    .end local v0    # "aid":[B
    .restart local v1    # "aid":[B
    goto :goto_0
.end method

.method public static getParam([B)[B
    .locals 4
    .param p0, "tlv"    # [B

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 68
    .local v0, "param":[B
    const/16 v1, -0x7e

    invoke-static {v1, p0}, Lcom/android/nfc/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "EeTransactionParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParam; found type 0x82 (param); len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-object v0
.end method

.method public static getSEId([B)[B
    .locals 4
    .param p0, "tlv"    # [B

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "seid":[B
    const/16 v1, -0x31

    invoke-static {v1, p0}, Lcom/android/nfc/EeTransactionParser;->decode(B[B)[B

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const-string v1, "EeTransactionParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSEId; found type 0xCF (seid); len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-object v0
.end method
